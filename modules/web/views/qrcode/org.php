<?php
use \app\common\services\UrlService;
use \app\common\services\UtilService;
use \app\common\services\StaticService;
?>

<?php echo Yii::$app->view->renderFile("@app/modules/web/views/common/tab_qrcode_org.php",[ 'current' => 'org' ]);?>

<div class="row">
	<div class="col-lg-12">
        <table class="table table-bordered m-t">
            <thead>
            <tr>
                <th>机构名称</th>
                <th>二维码</th>
                <th>H5地址</th>
            </tr>
            </thead>
            <tbody>
            <?php if( $org_qrcode ):?>
                <tr>
                    <td><?=UtilService::encode( $org_qrcode['org_name'] );?></td>
                    <td>
                        <img style="width: 100px;height: 100px;" src="<?=UrlService::buildWwwUrl( "/default/qrcode",[ 'qr_code_url' => $org_qrcode['qrcode'] ] );?>"/>
                    </td>
                    <td><?=UtilService::encode( 'sdf');?></td>
                </tr>
            <?php else:?>
                <tr><td colspan="5">暂无数据</td></tr>
            <?php endif;?>
            </tbody>
        </table>
	</div>
</div>

