<?php
use \app\common\services\UrlService;
use \app\common\services\UtilService;


?>
<?php echo Yii::$app->view->renderFile("@app/modules/web/views/common/tab_risk.php",[ 'current' => 'index' ]);?>
<div class="row m-t">
	<div class="col-lg-12">
        <div class="row">
            <div class="col-lg-12">
                <div class="m-b-md">
                    <h2>风控报告</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2 text-center">
                <img class="img-circle circle-border" src="<?=UrlService::buildWwwUrl("/images/common/qrcode.jpg");?>" width="100px" height="100px"/>
            </div>
            <div class="col-lg-3">
                <p class="m-t">姓名：<?=UtilService::encode( '小秦') ;?></p>
                <p>手机：<?=UtilService::encode( '234234234234' ) ;?></p>
                <p>身份证：<?=UtilService::encode( '234234234234sfsdfee333' ) ;?></p>
            </div>
            <div class="col-lg-7">
                <p class="m-t">芝麻信用：<?=UtilService::encode( 'sdfsdf') ;?></p>
                <p>余额：<?=UtilService::encode( 'sdfsdfsdfsdf');?>元</p>
                <p>截止日期：<?=UtilService::encode( 'sdfsdfsdfsdf' ) ;?></p>
            </div>
        </div>
        <div class="row m-t">
            <div class="col-lg-12">
                <div class="panel blank-panel">
                    <div class="panel-heading">
                        <div class="panel-options">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active" role="presentation">
                                    <a href="#base_info" aria-controls="base_info" role="tab" data-toggle="tab">基本信息</a>
                                </li>
                                <li  role="presentation">
                                    <a href="#operator" aria-controls="operator" role="tab" data-toggle="tab">运营商</a>
                                </li>
                                <li role="presentation">
                                    <a href="#e-commerce" aria-controls="e-commerce" role="tab" data-toggle="tab">电商</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="base_info">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>基本信息</th>
                                            <th>基本信息</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr><td colspan="2">暂无数据</td></tr>
                                    </tbody>
                                </table>

                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="operator">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>运营商</th>
                                        <th>运营商</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr><td colspan="2">暂无数据</td></tr>
                                    </tbody>
                                </table>

                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="e-commerce">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>电商</th>
                                        <th>电商</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr><td colspan="2">暂无数据</td></tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
