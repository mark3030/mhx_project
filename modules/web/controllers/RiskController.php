<?php

namespace app\modules\web\controllers;

use app\common\services\ConstantMapService;
use app\common\services\UtilService;
use app\models\member\Member;
use app\models\member\Role;
use app\modules\web\controllers\common\BaseController;
use yii\helpers\ArrayHelper;
use yii;

class RiskController extends BaseController {

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
        $query->andWhere(['org_id'=>$this->current_user['org_id']]);

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

    public function actionInfo(){
//        $id = intval( $this->get("id", 0) );
//        $reback_url = UrlService::buildWebUrl("/member/index");
//        if( !$id ){
//            return $this->redirect( $reback_url );
//        }
//
//        $info = Member::find()->where([ 'id' => $id ])->one();
//        if( !$info ){
//            return $this->redirect( $reback_url );
//        }
//
//        $pay_order_list = PayOrder::find()->where([ 'member_id' => $id,'status' => [ -8,1 ] ])->orderBy([ 'id' => SORT_DESC ])->all();
//        $comments_list = MemberComments::find()->where([ 'member_id' => $id ])->orderBy([ 'id' => SORT_DESC ])->all();


        return $this->render("info");
    }


}
