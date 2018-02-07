<?php

namespace app\modules\m\controllers;

use app\common\services\ConstantMapService;
use app\common\services\DataHelper;
use app\common\services\QueueListService;
use app\common\services\UrlService;
use app\common\services\UtilService;
use app\models\book\Book;
use app\models\brand\BrandImages;
use app\models\brand\BrandSetting;
use app\models\City;
use app\models\market\ChannelQrcode;
use app\models\member\Member;
use app\models\member\MemberAddress;
use app\models\member\MemberComments;
use app\models\member\MemberFav;
use app\models\member\OauthMemberBind;
use app\models\pay\PayOrder;
use app\models\pay\PayOrderItem;
use app\models\sms\SmsCaptcha;
use app\modules\m\controllers\common\BaseController;
use app\common\services\AreaService;


class ItemController extends BaseController
{

    //客户录入第一步（短信验证）
    public function actionStep()
    {
        if (\Yii::$app->request->isGet) {
            $info = [];
            $active = false;
            $channel_id = $this->get('id');
            if ($channel_id) {
                $info = ChannelQrcode::getInfoById($channel_id);
                $active = $info['status'] ? true : false;
            }
            return $this->render("step", ['info' => $info, 'active' => $active]);
        }

        $mobile = trim($this->post("mobile"));
        $img_captcha = trim($this->post("img_captcha"));
        $captcha_code = trim($this->post("captcha_code"));
        $date_now = date("Y-m-d H:i:s");

        if (mb_strlen($mobile, "utf-8") < 1 || !preg_match("/^[1-9]\d{10}$/", $mobile)) {
            return $this->renderJSON([], "请输入符合要求的手机号码~~", -1);
        }

        if (mb_strlen($img_captcha, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合要求的图像校验码~~", -1);
        }

        if (mb_strlen($captcha_code, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合要求的手机验证码~~", -1);
        }


        if (!SmsCaptcha::checkCaptcha($mobile, $captcha_code)) {
            return $this->renderJSON([], "请输入正确的手机验证码~~", -1);
        }

        $member_info = Member::find()->where(['mobile' => $mobile, 'status' => 1])->one();

        if (!$member_info) {
            if (Member::findOne(['mobile' => $mobile])) {
                $this->renderJSON([], "手机号码已注册，请直接使用手机号码登录~~", -1);
            }
            $model_member = new Member();
            $model_member->nickname = $mobile;
            $model_member->mobile = $mobile;
            $model_member->setSalt();
            $model_member->avatar = ConstantMapService::$default_avatar;
            $model_member->reg_ip = sprintf("%u", ip2long(UtilService::getIP()));
            $model_member->status = 1;
            $model_member->created_time = $model_member->updated_time = date("Y-m-d H:i:s");
            $model_member->save(0);
            $member_info = $model_member;
        }

        if (!$member_info || !$member_info['status']) {
            return $this->renderJSON([], "您的账号已被禁止，请联系客服解决~~", -1);
        }

        if ($openid) {
            $bind_info = OauthMemberBind::find()->where(['member_id' => $member_info['id'], 'openid' => $openid, 'type' => ConstantMapService::$client_type_wechat])->one();

            if (!$bind_info) {
                $model_bind = new OauthMemberBind();
                $model_bind->member_id = $member_info['id'];
                $model_bind->type = ConstantMapService::$client_type_wechat;
                $model_bind->client_type = "weixin";
                $model_bind->openid = $openid;
                $model_bind->unionid = '';
                $model_bind->extra = '';
                $model_bind->updated_time = $date_now;
                $model_bind->created_time = $date_now;
                $model_bind->save(0);
                //绑定之后要做的事情
                QueueListService::addQueue("bind", [
                    'member_id' => $member_info['id'],
                    'type' => 1,
                    'openid' => $model_bind->openid
                ]);
            }
        }

        if (UtilService::isWechat() && $member_info['nickname'] == $member_info['mobile']) {
            return $this->renderJSON(['url' => UrlService::buildMUrl("/oauth/login", ['scope' => 'snsapi_userinfo'])], "绑定成功~~");
        }
        //todo设置登录态
        $this->setLoginStatus($member_info);
        return $this->renderJSON(['url' => UrlService::buildMUrl("/default/index")], "绑定成功~~");
    }


    public function actionIndex(){
        if (\Yii::$app->request->isGet) {
            $info = [];
            $active = false;
            $channel_id = $this->get('id');
            if ($channel_id) {
                $info = ChannelQrcode::getInfoById($channel_id);
                $active = $info['status'] ? true : false;
            }
            return $this->render("index", ['info' => $info, 'active' => $active]);
        }
    }


    public function actionBaseInfo()
    {
        if (\Yii::$app->request->isGet) {
            $info = [];
            $active = false;
            $channel_id = $this->get('id');
            if ($channel_id) {
                $info = ChannelQrcode::getInfoById($channel_id);
                $active = $info['status'] ? true : false;
            }
            return $this->render("base_info",
                [
                    'info' => $info,
                    'contacts_mapping'=> ConstantMapService::$contacts_mapping,
                    'province_mapping' => AreaService::getProvinceMapping(),
                    'active' => $active
                ]);
        }

        $id = intval($this->post("id", 0));
        $nickname = trim($this->post("nickname", ""));
        $mobile = trim($this->post("mobile", ""));
        $province_id = intval($this->post("province_id", 0));
        $city_id = intval($this->post("city_id", 0));
        $area_id = intval($this->post("area_id", 0));
        $address = trim($this->post("address", ""));
        $date_now = date("Y-m-d H:i:s");

        if (mb_strlen($nickname, "utf-8") < 1) {
            return $this->renderJSON([], "请输入符合规范的收货人姓名~~", -1);
        }

        if (!preg_match("/^[1-9]\d{10}$/", $mobile)) {
            return $this->renderJSON([], "请输入符合规范的收货人手机号码~~", -1);
        }

        if ($province_id < 1) {
            return $this->renderJSON([], "请选择省~~", -1);
        }

        if ($city_id < 1) {
            return $this->renderJSON([], "请选择市~~", -1);
        }

        if ($area_id < 1) {
            return $this->renderJSON([], "请选择区~~", -1);
        }

        if (mb_strlen($address, "utf-8") < 3) {
            return $this->renderJSON([], "请输入符合规范的收货人详细地址~~", -1);
        }

        $info = [];
        if ($id) {
            $info = MemberAddress::find()->where(['id' => $id, 'member_id' => $this->current_user['id']])->one();
        }

        if ($info) {
            $model_address = $info;
        } else {
            $model_address = new MemberAddress();
            $model_address->member_id = $this->current_user['id'];
            $model_address->status = 1;
            $model_address->created_time = $date_now;
        }

        $model_address->nickname = $nickname;
        $model_address->mobile = $mobile;
        $model_address->province_id = $province_id;
        $model_address->city_id = $city_id;
        $model_address->area_id = $area_id;
        $model_address->address = $address;
        $model_address->updated_time = $date_now;
        $model_address->save(0);

        return $this->renderJSON([], "操作成功");
    }

    public function actionAddress_ops()
    {
        $act = trim($this->post("act", ""));
        $id = intval($this->post("id", 0));

        if (!in_array($act, ["del", "set_default"])) {
            return $this->renderJSON([], ConstantMapService::$default_syserror, -1);
        }

        if (!$id) {
            return $this->renderJSON([], ConstantMapService::$default_syserror, -1);
        }

        $info = MemberAddress::find()->where(['member_id' => $this->current_user['id'], 'id' => $id])->one();
        switch ($act) {
            case "del":
                $info->is_default = 0;
                $info->status = 0;
                break;
            case "set_default":
                $info->is_default = 1;
                break;
        }

        $info->updated_time = date("Y-m-d H:i:s");
        $info->update(0);

        if ($act == "set_default") {
            MemberAddress::updateAll(
                ['is_default' => 0],
                ['AND', ['member_id' => $this->current_user['id'], 'status' => 1], ['!=', 'id', $id]]
            );
        }
        return $this->renderJSON([], "操作成功~~");
    }
}
