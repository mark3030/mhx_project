<?php
namespace app\modules\web\controllers;


use app\common\services\ConstantMapService;
use app\common\services\weixin\RequestService;
use app\models\market\ChannelQrcode;
use app\models\market\MarketQrcode;
use app\models\market\Org;
use app\modules\web\controllers\common\BaseController;

class ChannelController extends BaseController
{

    public function actionIndex()
    {
        $mix_kw = trim($this->get("mix_kw", ""));
        $p = intval($this->get("p", 1));
        $p = ($p > 0) ? $p : 1;

        $query = ChannelQrcode::find()->where(['org_id' => $this->current_user['org_id']]);
        if ($mix_kw) {
            $where_name = ['LIKE', 'name', '%' . strtr($mix_kw, ['%' => '\%', '_' => '\_', '\\' => '\\\\']) . '%', false];
            $query->andWhere($where_name);
        }


        //分页功能,需要两个参数，1：符合条件的总记录数量  2：每页展示的数量
        //60,60 ~ 11,10 - 1
        $total_res_count = $query->count();
        $total_page = ceil($total_res_count / $this->page_size);


        $list = $query->orderBy(['id' => SORT_DESC])
            ->offset(($p - 1) * $this->page_size)
            ->limit($this->page_size)
            ->all();

        return $this->render(
            "index", [
                'list' => $list,
                'search_conditions' => [
                    'mix_kw' => $mix_kw,
                    'p' => $p
                ],
                'pages' => [
                    'total_count' => $total_res_count,
                    'page_size' => $this->page_size,
                    'total_page' => $total_page,
                    'p' => $p
                ]
            ]
        );
    }

    public function actionSet()
    {
        if (\Yii::$app->request->isGet) {
            $id = intval($this->get("id", 0));
            $info = [];
            if ($id) {
                $info = ChannelQrcode::find()
                    ->where(['id' => $id, 'org_id' => $this->current_user['org_id']])
                    ->one();
            }
            return $this->render(
                "set", [
                    'info' => $info
                ]
            );
        }

        $id = intval($this->post("id", 0));
        $name = trim($this->post("name", ""));

        $date_now = date("Y-m-d H:i:s");

        if (mb_strlen($name, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的营销渠道名称", -1);
        }

        $info = MarketQrcode::find()->where(['id' => $id])->one();
        if ($info) {
            $model_qrcode = $info;
        } else {
            $model_qrcode = new ChannelQrcode();
            $model_qrcode->created_time = $date_now;
            $model_qrcode->org_id = $this->current_user['org_id'];
        }

        $model_qrcode->name = $name;
        $model_qrcode->updated_time = $date_now;
        if ($model_qrcode->save(0)) {
            if (!$model_qrcode->qrcode_info) {//如果没有二维码，就生成一个
                $model_qrcode->qrcode_info = $model_qrcode->geneQrcode($model_qrcode->id);
                $model_qrcode->update(0);
            }
        }

        return $this->renderJSON([], "操作成功~~");

    }

    public function actionOps()
    {
        if (!\Yii::$app->request->isPost) {
            return $this->renderJSON([], ConstantMapService::$default_syserror, -1);
        }

        $id = $this->post('id', []);
        $act = trim($this->post('act', ''));
        if (!$id) {
            return $this->renderJSON([], "请选择要操作的渠道", -1);
        }

        if (!in_array($act, ['remove', 'recover'])) {
            return $this->renderJSON([], "操作有误，请重试", -1);
        }

        $qrcode = ChannelQrcode::find()->where(['id' => $id, 'org_id' => $this->current_user['org_id']])->one();
        if (!$qrcode) {
            return $this->renderJSON([], "指定渠道不存在", -1);
        }

        switch ($act) {
            case "remove":
                $qrcode->status = 0;
                break;
            case "recover":
                $qrcode->status = 1;
                break;
        }
        $qrcode->updated_time = date("Y-m-d H:i:s");
        $qrcode->update(0);
        return $this->renderJSON([], "操作成功");
    }

}