<?php
/**
 * Class UserController
 */

namespace app\modules\web\controllers;


use app\common\services\CheckService;
use app\common\services\ConstantMapService;
use app\common\services\UrlService;
use app\common\services\UtilService;
use app\models\log\AppAccessLog;
use app\models\member\Role;
use app\models\User;
use app\modules\web\controllers\common\BaseController;
use yii\helpers\ArrayHelper;
use yii;

class AccountController extends BaseController
{
    public function actionIndex()
    {
        $mix_kw = trim($this->get("mix_kw", ""));
        $status = intval($this->get("status", ConstantMapService::$status_default));
        $p = intval($this->get("p", 1));
        $p = ($p > 0) ? $p : 1;
        $query = User::find();
        if ($mix_kw) {
            $where_nickname = ['LIKE', 'nickname', '%' . strtr($mix_kw, ['%' => '\%', '_' => '\_', '\\' => '\\\\']) . '%', false];
            $where_mobile = ['LIKE', 'mobile', '%' . strtr($mix_kw, ['%' => '\%', '_' => '\_', '\\' => '\\\\']) . '%', false];
            $query->andWhere(['OR', $where_nickname, $where_mobile]);
        }

        if ($status > ConstantMapService::$status_default) {
            $query->andWhere(['status' => $status]);
        }
        $query->andWhere(['!=', 'uid', $this->current_user['uid']]);
        $query->andWhere(['org_id' => $this->current_user['org_id']]);
        //分页功能,需要两个参数，1：符合条件的总记录数量  2：每页展示的数量
        //60,60 ~ 11,10 - 1
        $total_res_count = $query->count();
        $total_page = ceil($total_res_count / $this->page_size);

        $list = $query->orderBy(['uid' => SORT_DESC])
            ->offset(($p - 1) * $this->page_size)
            ->limit($this->page_size)
            ->asArray()
            ->all();
        foreach ($list as &$val) {
            $condition = ['org_id'=>$this->current_user['org_id'],'id'=>$val['role']];
            $items = ['name'];
            $role_item = Role::getRoleItem($condition,$items);
            $val['role'] = $role_item['name'];
            $condition = ['uid'=>$val['leader_id']];
            $items = ['nickname'];
            $role_item = User::getUserItem($condition,$items);
            $val['leader'] = $role_item['nickname'];
        }
        return $this->render("index", [
            'list' => $list,
            'search_conditions' => [
                'mix_kw' => $mix_kw,
                'p' => $p,
                'status' => $status
            ],
            'status_mapping' => ConstantMapService::$status_mapping,
            'pages' => [
                'total_count' => $total_res_count,
                'page_size' => $this->page_size,
                'total_page' => $total_page,
                'p' => $p
            ]
        ]);
    }

    public function actionSet()
    {
        if (\Yii::$app->request->isGet) {
            $id = intval($this->get("id", 0));
            $info = [];
            if ($id) {
                $info = User::find()->where(['uid' => $id])->one();
            }
            $role_list = Role::find()->where(['org_id'=>$this->current_user['org_id'],'status'=>1])
                ->select(['id','name'])->orderBy(['created_time' => SORT_DESC])->all();
            $account_model = User::find()->where(['org_id'=>$this->current_user['org_id'],'status'=>1]);
            if ($id) {
                $account_model = $account_model->andWhere(['!=', 'uid', $id]);
            }
            $account_list = $account_model->select(['uid','nickname'])->orderBy(['created_time' => SORT_DESC])->all();
            return $this->render("set", [
                'info' => $info,
                'role_list'=>$role_list,
                'account_list'=>$account_list
            ]);
        }

        $id = intval($this->post("id", 0));
        $nickname = trim($this->post("nickname", ""));
        $mobile = trim($this->post("mobile", ""));
        $ident = trim($this->post("ident", ""));
        $role = trim($this->post("role", ''));
        $leader = trim($this->post("leader", ''));
        $login_name = trim($this->post("login_name", ""));
        $login_pwd = trim($this->post("login_pwd", ""));
        $date_now = date("Y-m-d H:i:s");

        if (mb_strlen($nickname, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的姓名", -1);
        }


        if (!CheckService::validateMobile($mobile)) {
            return $this->renderJSON([], "请输入符合规范的手机号码", -1);
        }

        if (!CheckService::validateIDCard($ident)) {
            return $this->renderJSON([], "请输入符合规范的身份证", -1);
        }

        if (mb_strlen($login_name, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的登录名", -1);
        }

        if (mb_strlen($login_pwd, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的登录密码", -1);
        }


        $has_in = User::find()->where(['login_name' => $login_name])->andWhere(['!=', 'uid', $id])->count();
        if ($has_in) {
            return $this->renderJSON([], "该登录名已存在，请换一个试试", -1);
        }


        $info = User::find()->where(['uid' => $id])->one();
        if ($info) {
            $model_user = $info;
        } else {
            $model_user = new User();
            $model_user->setSalt();
            $model_user->created_time = $date_now;
        }
        $model_user->org_id = $this->current_user['org_id'];
        $model_user->nickname = $nickname;
        $model_user->mobile = $mobile;
        $model_user->ident = $ident;
        $model_user->role = $role;
        $model_user->leader_id = $leader;
        $model_user->avatar = ConstantMapService::$default_avatar;
        $model_user->login_name = $login_name;
        if ($login_pwd != ConstantMapService::$default_password) {
            $model_user->setPassword($login_pwd);
        }
        $model_user->updated_time = $date_now;
        $model_user->save(0);

        return $this->renderJSON([], "操作成功");

    }

    public function actionInfo()
    {
        $id = intval($this->get("id", 0));
        $reback_url = UrlService::buildWebUrl("/account/index");
        if (!$id) {
            return $this->redirect($reback_url);
        }

        $info = User::find()->where(['uid' => $id])->one();
        if (!$info) {
            return $this->redirect($reback_url);
        }

        $access_list = AppAccessLog::find()->where(['uid' => $id])->orderBy(['id' => SORT_DESC])->limit(10)->all();

        return $this->render("info", [
            'info' => $info,
            'access_list' => $access_list
        ]);
    }


    public function actionOps()
    {
        if (!\Yii::$app->request->isPost) {
            return $this->renderJSON([], ConstantMapService::$default_syserror, -1);
        }

        $id = $this->post('id', []);
        $act = trim($this->post('act', ''));
        if (!$id) {
            return $this->renderJSON([], "请选择要操作的账号", -1);
        }

        if (!in_array($act, ['remove', 'recover'])) {
            return $this->renderJSON([], "操作有误，请重试", -1);
        }

        $info = User::find()->where(['uid' => $id])->one();
        if (!$info) {
            return $this->renderJSON([], "指定账号不存在", -1);
        }

        switch ($act) {
            case "remove":
                $info->status = 0;
                break;
            case "recover":
                $info->status = 1;
                break;
        }
        $info->updated_time = date("Y-m-d H:i:s");
        $info->update(0);
        return $this->renderJSON([], "操作成功");
    }

}