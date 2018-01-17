<?php

namespace app\modules\web\controllers;


use app\common\services\CheckService;
use app\common\services\ConstantMapService;
use app\common\services\UrlService;
use app\models\log\AppAccessLog;
use app\models\org\Org;
use app\models\User;
use app\modules\web\controllers\common\BaseController;

class OrgController extends BaseController
{
    public function actionIndex()
    {
        $org_id = $this->current_user['org_id'];
        $mix_kw = trim($this->get("mix_kw", ""));
        $status = intval($this->get("status", ConstantMapService::$status_default));
        list($p,$offset,$limit) = $this->getPagination();
        list($total_count,$list) = Org::getList($mix_kw,$status,$org_id,$offset,$limit);
        $total_page = ceil($total_count / $this->page_size);
        return $this->render("index", [
            'list' => $list,
            'search_conditions' => [
                'mix_kw' => $mix_kw,
                'p' => $p,
                'status' => $status
            ],
            'status_mapping' => ConstantMapService::$status_mapping,
            'pages' => [
                'total_count' => $total_count,
                'page_size' => $this->page_size,
                'total_page' => $total_page,
                'p' => $p
            ]
        ]);
    }

    public function actionSet()
    {
        if (\Yii::$app->request->isGet) {
            $id = intval($this->get("uid", 0));
            $info = [];
            if ($id) {
                $condition = [
                    'uid'=>$id
                ];
                $info = Org::getInfo($condition);
            }
            return $this->render("set", [
                'info' => $info
            ]);
        }

        $id = intval($this->post("id", 0));
        $org_id = intval($this->post("org_id", 0));
        $org_name = trim($this->post("org_name", ""));
        $nickname = trim($this->post("nickname", ""));
        $mobile = trim($this->post("mobile", ""));
        $ident = trim($this->post("ident", ''));
        $balance = intval($this->post("balance", 0));
        $deadline = trim($this->post("deadline", ''));
        $login_name = trim($this->post("login_name", ""));
        $login_pwd = trim($this->post("login_pwd", ""));
        $date_now = date("Y-m-d H:i:s");

        if (mb_strlen($org_name, "utf-8") < 1) {
            return $this->renderJSON([], "请输入机构名称", -1);
        }

        if (mb_strlen($nickname, "utf-8") < 1) {
            return $this->renderJSON([], "请输入管理员姓名", -1);
        }

        if (!CheckService::validateMobile($mobile)) {
            return $this->renderJSON([], "请输入符合规范的手机号码", -1);
        }

        if (!CheckService::validateIDCard($ident)) {
            return $this->renderJSON([], "请输入符合规范的身份证", -1);
        }

        if (!$balance) {
            return $this->renderJSON([], "请输入金额", -1);
        }

        if (!$deadline) {
            return $this->renderJSON([], "请输入截止日期", -1);
        }

        if (mb_strlen($login_pwd, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的登录密码", -1);
        }
        if(!User::checkLoginName($login_name,$id)){
            return $this->renderJSON([], "该登录名已存在，请换一个试试", -1);
        }
        $org_info = Org::findOne(['id'=>$org_id]);
        if ($org_info) {
            $model_org = $org_info;
        } else {
            $model_org = new Org();
            $model_org->created_time = $date_now;
        }
        $model_org->org_name = $org_name;
        $model_org->balance = $balance;
        $model_org->deadline = $deadline;
        $model_org->updated_time = $date_now;
        $model_org->save(false);
        $org_id = $model_org->id;

        $info = User::findOne(['uid'=>$id]);
        if( $info ){
            $model_user = $info;
        }else{
            $model_user = new User();
            $model_user->setSalt();
            $model_user->created_time = $date_now;
        }
        $model_user->org_id = $org_id;
        $model_user->nickname = $nickname;
        $model_user->mobile = $mobile;
        $model_user->ident = $ident;
        $model_user->role = ConstantMapService::$manager_role_id;
        $model_user->avatar = ConstantMapService::$default_avatar;
        $model_user->login_name = $login_name;
        if ($login_pwd != ConstantMapService::$default_password) {
            $model_user->setPassword($login_pwd);
        }
        $model_user->updated_time = $date_now;
        $model_user->save(0);

        return $this->renderJSON([], "操作成功!");

    }

    public function actionInfo()
    {
        $uid = intval($this->get("uid", 0));
        $reback_url = UrlService::buildWebUrl("/org/index");
        if (!$uid) {
            return $this->redirect($reback_url);
        }

        $info = Org::getInfo(['uid'=>$uid]);
        if (!$info) {
            return $this->redirect($reback_url);
        }
        $access_list = AppAccessLog::find()->where(['uid' => $uid])->orderBy(['id' => SORT_DESC])->limit(10)->all();

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
        $org_id = $info->org_id;
        $org_info = Org::findOne(['id'=>$org_id]);
        switch ($act) {
            case "remove":
                $info->status = 0;
                $org_info->status = 0;
                break;
            case "recover":
                $info->status = 1;
                $org_info->status = 1;
                break;
        }
        $now = date("Y-m-d H:i:s");
        $info->updated_time = $now;
        $info->update(0);
        $org_info->updated_time =$now;
        $org_info->update(0);
        return $this->renderJSON([], "操作成功");
    }

}