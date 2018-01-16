<?php
$host = 'http://localhost';
return [
	'title' => '编程浪子微信图书商城',
//	'domain' => [
//		'www' => 'http://maihaoxin.project.com.tunnel.echomod.cn/',
//		'm' => 'http://maihaoxin.project.com.tunnel.echomod.cn/m',
//		'web' => 'http://maihaoxin.project.com.tunnel.echomod.cn/web'
//	],
    'domain' => [
		'www' => $host,
		'm' => $host. '/m',
		'web' =>$host.'/web'
	],
	'upload' => [
		'avatar' => '/uploads/avatar',
		'brand' => '/uploads/brand',
		'book' => '/uploads/book',
	],
	'weixin' => [
		'appid' => 'wx426c6ca1430b487b',
		'sk' => 'd190018a6491a5a223c3c00e727dc4a4',
		'token' => '6f5f924719b212d4d795bca099729297',
		'aeskey' => '根据实际情况填写',
		'pay' => [
			'key' => '根据实际情况填写',
			'mch_id' => '根据实际情况填写',
			'notify_url' => [
				'm' => '/pay/callback'
			]
		]
	]
];
