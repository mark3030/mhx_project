<?php
/**
 * 第三方api公共调用模块
 */

namespace app\common\services\api;


use yii\base\Object;

class Common extends Object {
	//配置您申请的appkey和apiSecret
	const API_URL = "https://t.limuzhengxin.cn";//测试地址：https://t.limuzhengxin.cn 生产地址：https://api.limuzhengxin.com
	public $apiKey = "1090741549565425";//!!!需自行设定!!!
	public $apiSecret = "C9kzXQuGJyfkbYLZOc4dz5V6TvAfrbz5";//!!!需自行设定!!!
	public $apiUrlTask = self::API_URL . "/mobile_report/v1/task";//运营商报告采集任务提交地址
	public $apiUrlStatus = self::API_URL . "/mobile_report/v1/task/status";//运营商报告采集状态查询地址
	public $apiUrlInput = self::API_URL . "/mobile_report/v1/task/input";//运营商报告验证码输入地址
	public $apiUrlReport = self::API_URL . "/mobile_report/v1/task/report";//运营商报告结果获取地址
	public $apiUrlData = self:: API_URL . "/mobile_report/v1/task/data";//运营商报告原始数据获取地址
	public $apiUrlLocation = self::API_URL . "/mobile/v1/location";//运营商电话地址
	public $accessType = "api";//api:api接入、h5:h5接入、sdk:sdk接入、默认api
	public $callBackUrl = "";//回调函数非必填
	public $uid = "";//用于回调通知时商户进行用户区分，通常填入用户在商户系统的用户名、提交流水号或其他商户其定义信息
	public $ts;

	public function init() {
		ini_set('max_execution_time', '600');
		$this->ts = $this->getMillisecond(); //用户请求提交的时间戳(毫秒) 如:1404955893000
	}


	public function getMillisecond() {
		list($s1, $s2) = explode(' ', microtime());
		return (float)sprintf('%.0f', (floatval($s1) + floatval($s2)) * 1000);
	}

	//设定请求参数(加密生成sign并生成请求字符串)
	public function getParamString($params) {

		//计算签名
		$paramsSign = $params;

		//按照key排序
		ksort($paramsSign);

		$signPre = urldecode(http_build_query($paramsSign)) . $this->apiSecret;

		//echo($signPre)."</br>";
		//加密获取sign
		$sign = sha1($signPre);//对该字符串进行 SHA-1 计算，得到签名，并转换成 16 进制小写编码

		//设置请求参数
		$params['sign'] = $sign;

		$paramString = http_build_query($params);

		return $paramString;
	}


	//轮训获取结果
	public function roundRobin($paramstring) {
		//状态查询
		$json = $this->curl($this->apiUrlStatus, $paramstring, 1);
		$result = json_decode($json, true);

		$code = $result['code'];
		$msg = $result['msg'];
		$token = $result['token'];

		$this->myEcho("循环取的状态:" . $code . "");
		$this->myEcho("循环取的信息:");
		$this->myEcho($json);

		if (!isset($code) || empty($code)) {
			//未取到结果集.继续轮训
			return false;
		}

		//0开头标处理成功相关
		if ($this->startWith($code, "0")) {

			if ("0100" == $code) {//登陆成功
				$this->myEcho("对象结果查询 >>>>>" . $msg);
				return false;
			} else if ("0006" == $code) {//等待输入信息

				$input = $result['input'];

				//获取等待输入类型
				$type = $input['type'];
				//图片验证码和二维码为base64编码的图片
				$value = $input['value'];
				//保存到本地作识别用-根据实际业务场景处理
				if (isset($value) && !empty($value)) {
					file_put_contents($token . '.jpg', base64_decode($value));
				}

				//是否需要提交信息
				$bInput = false;
				switch ($type) {
					case "sms"://短信验证码
						$this->myEcho("请提交收到的短信验证码 >>>>>");
						$bInput = true;
						break;
					case "sms-jl"://吉林电信返回-短信验证码
						$this->myEcho("《请发送CXXD至10001获取验证码》，然后请提交收到的短信验证码 >>>>>");
						$bInput = true;
						break;
					case "img"://图片验证码
						$this->myEcho("请提交识别出的图片验证码 >>>>>");
						$bInput = true;
						break;
					case "qr"://二维码
						$this->myEcho("请扫描收到的图片二维码 >>>>>");
						$this->myEcho("二维码保存在当前程序跟目录下,二维码名称为：【" . $token . ".jpg" . "】 >>>>>");
						$bInput = false;
						break;
					case "idp"://独立密码
						$this->myEcho("请提交您的独立密码 >>>>>");
						$bInput = true;
						break;
					default:
						break;
				}
				if ($bInput) {
					//等待输入信息
					$jsonInput = $this->sendInput($token);
					$resultInput = json_decode($jsonInput, true);
					$code = $resultInput['code'];
					$this->myEcho("发送输入信息后查询状态：" . $code);
					if ("0009" == $code) {//结果    >>>>> 成功或失败
						//继续轮训
						return false;
					} else {
						//发送失败
						return true;
					}
				} else {
					//继续轮训
					return false;
				}
			} else if ("0000" == $code) {//成功
				$this->myEcho("运营商报告结果查询开始 >>>>>");
				$this->getReport($token);
				$this->myEcho("运营商报告结果查询结束 >>>>>");

				$this->myEcho("运营商报告原始数据结果查询开始 >>>>>");
				$this->getData($token);
				$this->myEcho("运营商报告原始数据结果查询结束 >>>>>");
				return true;
			} //其他情况继续轮训
			else {
				return false;
			}
		}

		//其他异常停止循环
		return true;
	}

	//等待输入信息
	public function sendInput($token) {

		global $apiKey, $apiUrlInput;

		$file = $token . '_input.txt';
		file_put_contents($file, "");
		$this->myEcho($file . "-文件创建成功。请在文件内输入上述提示信息");
		$input = "";
		try {
			do {
				$input = file_get_contents($file);
				ob_flush();
				flush();
				sleep(2);
			} while (empty($input));
		} catch (Exception $ex) {
			$this->myEcho("等待输入信息超时");
		}


		$this->myEcho("您输入的信息为：" . $input);
		@unlink($file);

		//发送短信参数
		$params = array(
			"apiKey" => $apiKey,
			"token" => $token,
			"input" => $input
		);

		$paramstring = getParamString($params);

		//获取结果
		$json = $this->curl($apiUrlInput, $paramstring, 1);

		$this->myEcho("<pre>");
		$this->myEcho($json);
		return $json;
	}

	//获取结果集
	public function getData($token) {

		global $apiUrlData, $apiKey;
		$params = array(
			"apiKey" => $apiKey,
			"token" => $token
		);
		$paramstring = $this->getParamString($params);

		//获取结果
		$json = $this->curl($apiUrlData, $paramstring, 1);

		$this->myEcho("运营商原始数据结果：");
		$this->myEcho($json);
		$this->myEcho("<pre>");

	}

	//获取报告结果集
	public function getReport($token) {

		global $apiUrlReport, $apiKey;
		$params = array(
			"apiKey" => $apiKey,
			"token" => $token
		);
		$paramstring = getParamString($params);

		//获取结果
		$json = $this->curl($apiUrlReport, $paramstring, 1);

		$this->myEcho("运营商报告结果：");
		$this->myEcho($json);
		$this->myEcho("<pre>");

	}

	//第一个是原串,第二个是 部份串
	public function startWith($str, $needle) {
		return strpos($str, $needle) === 0;
	}

	//请求接口返回内容
	public function curl($url, $params = false, $ispost = 0) {
		$httpInfo = array();
		$ch = curl_init();

		curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
		curl_setopt($ch, CURLOPT_USERAGENT, 'limuzhengxin.com');
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		if ($ispost) {
			curl_setopt($ch, CURLOPT_POST, 1);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
			curl_setopt($ch, CURLOPT_URL, $url);
		} else {
			if ($params) {
				curl_setopt($ch, CURLOPT_URL, $url . '?' . $params);
			} else {
				curl_setopt($ch, CURLOPT_URL, $url);
			}
		}
		$response = curl_exec($ch);
		if ($response === FALSE) {
			$this->myEcho("cURL Error: " . curl_error($ch));
			return false;
		}
		$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
		$httpInfo = array_merge($httpInfo, curl_getinfo($ch));
		curl_close($ch);
		return $response;
	}

	//显示日志并记录
	public function myEcho($str) {

		global $log;

		$str = $str . "</br>";
		print_r($str);
		$log .= $str;
	}
}