<?php
/**
 * 运营商调用流程：
 * 1、设定运营商报告请求数据参数
 * 2、提交加密后的运营商报告请求参数
 * 3、获取提交状态【0010:受理成功、其他情况失败】
 * 4、受理成功后轮训获取状态
 * 5、轮训状态为：【0006】表示需要输入短信验证码，
 * 目前该demo采用在读取文件方式读取短信验证码。请根据具体修改设定接收短信验证码方式
 * 6、轮训状态为:【0000】表示报告生成成功。可调用获取结果接口获取数据
 * 7、程序结束
 */

namespace app\common\services\api;


class Apimobile extends Common {
	//运营商报告请求参数
	public $identityCardNo = "";//查询用户的身份证号-必填
	public $identityName = "";//查询用户的真实姓名-必填
	public $username = "";//用户名-必填 !!!需自行设定!!!
	public $password = "";//用户密码-必填 //!!!需自行设定!!!
	public $contentType = "";//查询指定内容 //!!!需自行设定!!!
	public $otherInfo = "";// !!!需自行设定!!!
	public $mobileNo = "";//手机号

	//第一联系人
	public $contactName1st = "";//第一联系人姓名 //!!!非必填 需自行设定!!!
	public $contactMobile1st = "";//第一联系人手机号 //!!!非必填 需自行设定!!!
	public $contactIdentityNo1st = "";//第一联系人省份证号 //!!!非必填 需自行设定!!!
	public $contactRelationship1st = "";//第一联系人关系--参见API文档附录社会关系表 //!!!非必填 需自行设定!!!

	//第二联系人
	public $contactName2nd = "";//第二联系人姓名 //!!!非必填 需自行设定!!!
	public $contactMobile2nd = "";//第二联系人手机号 //!!!非必填 需自行设定!!!
	public $contactIdentityNo2nd = "";//第二联系人省份证号 //!!!非必填 需自行设定!!!
	public $contactRelationship2nd = "";//第二联系人关系--参见API文档附录社会关系表 //!!!非必填 需自行设定!!!

	//第三联系人
	public $contactName3rd = "";//第三联系人姓名 //!!!非必填 需自行设定!!!
	public $contactMobile3rd = "";//第三联系人手机号 //!!!非必填 需自行设定!!!
	public $contactIdentityNo3rd = "";//第三联系人省份证号 //!!!非必填 需自行设定!!!
	public $contactRelationship3rd = "";//第三联系人关系--参见API文档附录社会关系表 //!!!非必填 需自行设定!!!

	//获取结果时间次数设定
	public $count = 50; //尝试次数
	public $sleepCount = 10;//间隔时间

	public $token = "";//请求数据流程唯一标志

	public function getLocation(){
		$params = [
			"apiKey" => $this->apiKey,
		];
		$paramString = $this->getParamString($params);
		$paramString .= "&mobileNo=".$this->mobileNo;
		$content = $this->curl($this->apiUrlTask, $paramString, 1);
		var_dump($content);

	}


	//调用获取数据流程
	public function process() {
		header('Content-type:text/html;charset=utf-8');

		//运营商报告采集任务提交
		//运营商采集参数
		$params = [
			"apiKey" => $this->apiKey,
			"callBackUrl" => $this->callBackUrl,
			"accessType" => $this->accessType,
			"uid" => $this->uid,
			"ts" => $this->ts,
			"identityCardNo" => $this->identityCardNo,
			"identityName" => $this->identityName,
			"username" => $this->username,
			"password" => base64_encode($this->password),
			"contentType" => $this->contentType,
			"otherInfo" => $this->otherInfo,
			"contactName1st" => $this->contactName1st,
			"contactMobile1st" => $this->contactMobile1st,
			"contactIdentityNo1st" => $this->contactIdentityNo1st,
			"contactRelationship1st" => $this->contactRelationship1st,
			"contactName2nd" => $this->contactName2nd,
			"contactMobile2nd" => $this->contactMobile2nd,
			"contactIdentityNo2nd" => $this->contactIdentityNo2nd,
			"contactRelationship2nd" => $this->contactRelationship2nd,
			"contactName3rd" => $this->contactName3rd,
			"contactMobile3rd" => $this->contactMobile3rd,
			"contactIdentityNo3rd" => $this->contactIdentityNo3rd,
			"contactRelationship3rd" => $this->contactRelationship3rd
		];
		//生成参数字符串
		$paramString = $this->getParamString($params);

		//提交请求
		$content = $this->curl($this->apiUrlTask, $paramString, 1);
		$result = json_decode($content, true);

		if ($result) {

			//受理成功的情况
			if ($result['code'] == '0010') {
				myEcho("该请求受理成功");

				//请求成功获取token
				$token = $result['token'];

				//运营商采集状态参数
				$params = array(
					"apiKey" => $this->apiKey,
					"token" => $token
				);

				//生成参数字符串
				$paramString = $this->getParamString($params);
				$i = 1;
				do {
					$this->myEcho("<pre>");
					$this->myEcho("轮循第【" . $i . "】次 start");

					//轮训获取结果
					if (roundRobin($paramString)) {
						$this->myEcho("轮循 end");
						$this->myEcho("获取信息结束");
						break;
					}
					$this->myEcho("轮循第【" . $i++ . "】次 end");

					ob_flush();
					flush();
					sleep($this->sleepCount);

					if ($this->count-- <= 0) {
						myEcho("获取信息结束。没有获取到数据");
						break;
					}
				} while (1);


			} else {
				$this->myEcho($result['code'] . ":" . $result['msg']);
			}
		} else {
			$this->myEcho("请求失败");
		}
	}
}