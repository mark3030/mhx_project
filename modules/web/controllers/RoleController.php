<?php

namespace app\modules\web\controllers;

use app\common\services\ConstantMapService;
use app\common\services\UtilService;
use app\models\member\Member;
use app\models\member\Role;
use app\modules\web\controllers\common\BaseController;
use yii\helpers\ArrayHelper;
use yii;

class RoleController extends BaseController {

    public function actionIndex() {
        $mix_kw = trim($this->get("mix_kw", ""));
        $status = intval($this->get("status", ConstantMapService::$status_default));
        $p = intval($this->get("p", 1));
        $p = ($p > 0) ? $p : 1;
        $select = [
            'name', 'id', 'created_time', 'status', 'info'
        ];
        $query = Role::find()->select($select);

        if ($mix_kw) {
            $where_name = ['LIKE', 'name', '%' . strtr($mix_kw, ['%' => '\%', '_' => '\_', '\\' => '\\\\']) . '%', false];
            $query->where($where_name);
        }

        if ($status > ConstantMapService::$status_default) {
            $query->andWhere(['status' => $status]);
        }


        //分页功能,需要两个参数，1：符合条件的总记录数量  2：每页展示的数量
        //60,60 ~ 11,10 - 1
        $total_res_count = $query->count();
        $total_page = ceil($total_res_count / $this->page_size);

        $list = $query->orderBy(['id' => SORT_DESC])
            ->offset(($p - 1) * $this->page_size)
            ->limit($this->page_size)
            ->all();

        $data = [];

        if ($list) {
            foreach ($list as $_item) {
                $data[] = [
                    'id' => $_item['id'],
                    'roles' => Role::getRoleName($_item['info']),
                    'name' => UtilService::encode($_item['name']),
                    'created_time' => UtilService::encode($_item['created_time']),
                    'status_desc' => ConstantMapService::$status_mapping[$_item['status']],
                    'status' => $_item['status'],
                ];
            }
        }

        return $this->render(
            'index', [
                       'list' => $data,
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
                   ]
        );
    }

    public function actionSet() {
        if (\Yii::$app->request->isGet) {
            $id = intval($this->get("id", 0));
            $info = [];
            $role_list = ArrayHelper::index(Yii::$app->params['role'],'id');
            if ($id) {
                $select = [
                    'name', 'id', 'created_time', 'status', 'info'
                ];
                $info = Role::find()->where(['id' => $id])->select($select)->one();
                if ($info) {
                    $checked_role_ids = explode(',', $info['info']);
                    foreach ($role_list as $role_id=>&$role){
                        $role['checked'] = false;
                        if(in_array($role_id,$checked_role_ids)){
                            $role['checked'] = true;
                        }
                    }
                }
            }

            return $this->render(
                'set', [
                         'info' => $info,
                         'role_list' => $role_list
                     ]
            );
        }

        $id = intval($this->post("id", 0));
        $name = trim($this->post("name", ""));
        $roles = trim($this->post("roles", ""), ',');
        $date_now = date("Y-m-d H:i:s");

        if (mb_strlen($name, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的角色名称", -1);
        }

        if (mb_strlen($roles, "utf-8") < 1) {
            return $this->renderJSON([], "请选择权限", -1);
        }


        $info = [];
        if ($id) {
            $info = Role::findOne(['id' => $id]);
        }
        if ($info) {
            $model = $info;
        } else {
            $model = new Role();
            $model->org_id = $this->current_user['org_id'];
            $model->status = 1;
            $model->created_time = $date_now;
        }
        $model->name = $name;
        $model->info = $roles;
        $model->updated_time = $date_now;
        $model->save(0);
        return $this->renderJSON([], "操作成功~~");
    }

    public function actionOps() {
        if (!\Yii::$app->request->isPost) {
            return $this->renderJSON([], ConstantMapService::$default_syserror, -1);
        }

        $id = $this->post('id', []);
        $act = trim($this->post('act', ''));
        if (!$id) {
            return $this->renderJSON([], "请选择要操作的会员账号号~~", -1);
        }

        if (!in_array($act, ['remove', 'recover'])) {
            return $this->renderJSON([], "操作有误，请重试~~", -1);
        }

        $info = Member::find()->where(['id' => $id])->one();
        if (!$info) {
            return $this->renderJSON([], "指定会员账号不存在~~", -1);
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
        return $this->renderJSON([], "操作成功~~");
    }


}
