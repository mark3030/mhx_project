<?php
/**
 * 获取运营商数据
 */

namespace app\modules\m\controllers;


use app\common\services\api\Apimobile;
use yii\web\Controller;

class MobileController extends Controller{
	public function actionT(){
		$apiMobile = new Apimobile();
		$apiMobile->mobileNo = '1357043625';
		$apiMobile->getLocation();
//		$apiMobile->process();

	}
}