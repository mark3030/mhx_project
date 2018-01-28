<?php
use app\common\services\UrlService;
use app\common\services\UtilService;
use app\common\services\StaticService;

StaticService::includeAppJsStatic("/js/web/channel/index.js", \app\assets\WebAsset::className());
?>

<?php echo Yii::$app->view->renderFile("@app/modules/web/views/common/tab_channel.php", ['current' => 'index']); ?>

<div class="row">
    <div class="col-lg-12">
        <div class="row m-t">
            <div class="col-lg-12">
                <a class="btn btn-w-m btn-outline btn-primary pull-right"
                   href="<?= UrlService::buildWebUrl("/channel/set"); ?>">
                    <i class="fa fa-plus"></i>渠道
                </a>
            </div>
        </div>
        <table class="table table-bordered m-t">
            <thead>
            <tr>
                <th>渠道名称</th>
                <th>推广地址</th>
                <th>扫码总数</th>
                <th>入件总数</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <?php if ($list): ?>
                <?php foreach ($list as $_item): ?>
                    <tr>
                        <td><?= UtilService::encode($_item['name']); ?></td>
                        <td>
                            <?= UtilService::encode($_item['qrcode_info']); ?>
                        </td>
                        <td><?= UtilService::encode($_item['total_scan_count']); ?></td>
                        <td><?= UtilService::encode($_item['total_reg_count']); ?></td>
                        <td>
                            <a data-toggle="modal" data-target="#qrcode_model"
                               data-qrcode="<?= UrlService::buildWwwUrl("/default/qrcode", ['qr_code_url' => $_item['qrcode_info']]); ?>">
                                <i class="fa fa-qrcode fa-lg"></i>
                            </a>
                            <?php if( $_item['status'] ):?>
                                <a class="m-l" href="<?=UrlService::buildWebUrl("/channel/set",[ 'id' => $_item['id'] ]);?>">
                                    <i class="fa fa-edit fa-lg"></i>
                                </a>

                                <a class="m-l remove" href="<?=UrlService::buildNullUrl();?>" data="<?=$_item['id'];?>">
                                    <i class="fa fa-trash fa-lg"></i>
                                </a>
                            <?php else:?>
                                <a class="m-l recover" href="<?=UrlService::buildNullUrl();?>" data="<?=$_item['id'];?>">
                                    <i class="fa fa-rotate-left fa-lg"></i>
                                </a>
                            <?php endif;?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="5">暂无数据</td>
                </tr>
            <?php endif; ?>
            </tbody>
        </table>
        <?php echo \Yii::$app->view->renderFile(
            "@app/modules/web/views/common/pagination.php", [
                'pages' => $pages,
                'url' => '/channel/index'
            ]
        ); ?>
    </div>
</div>


<div class="modal fade" id="qrcode_model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">渠道二维码</h4>
            </div>
            <div class="modal-body">
                <img style="width: 100%;height: 100%;">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>

