<?php
$host = 'http://localhost';
return [
    'title' => '时代创盈',
//	'domain' => [
//		'www' => 'http://maihaoxin.project.com.tunnel.echomod.cn/',
//		'm' => 'http://maihaoxin.project.com.tunnel.echomod.cn/m',
//		'web' => 'http://maihaoxin.project.com.tunnel.echomod.cn/web'
//	],
    'domain' => [
        'www' => $host,
        'm' => $host . '/m',
        'web' => $host . '/web'
    ],
    'upload' => [
        'avatar' => '/uploads/avatar',
        'brand' => '/uploads/brand',
        'book' => '/uploads/book',
    ],
    'path' => [
        'qrcode'=>$host.'/m/item/step'
    ],

    'role'=>[
        [
            'id'=>1,
            'name'=>'帐号管理'
        ],
        [
            'id'=>2,
            'name'=>'角色管理'
        ],
        [
            'id'=>3,
            'name'=>'推广渠道'
        ],
        [
            'id'=>4,
            'name'=>'会员管理'
        ],
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
