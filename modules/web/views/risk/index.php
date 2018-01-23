<?php
use \app\common\services\UrlService;
use \app\common\services\UtilService;
use \app\common\services\StaticService;
use \app\common\services\ConstantMapService;
StaticService::includeAppJsStatic( "/js/web/risk/index.js",\app\assets\WebAsset::className() );
?>

<?php echo \Yii::$app->view->renderFile("@app/modules/web/views/common/tab_risk.php", ['current' => 'index']); ?>

<div class="row">
    <div class="col-lg-12">
        <form class="form-inline wrap_search">
            <div class="row  m-t p-w-m">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" name="mix_kw" placeholder="姓名/身份证号/电话号码" class="form-control" value="<?=$search_conditions['mix_kw'];?>">
                        <span class="input-group-btn">
                            <button type="button" class="btn  btn-primary search">
                                <i class="fa fa-search"></i>搜索
                            </button>
                        </span>
                    </div>
                </div>
            </div>
            <hr/>
        </form>
        <table class="table table-bordered m-t">
            <thead>
            <tr>
                <th>姓名</th>
                <th>身份证号</th>
                <th>电话号码</th>
                <th>录入时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
			<?php if( $list ):?>
				<?php foreach( $list as $_item ):?>
                    <tr>
                        <td><?= '' ?></td>
                        <td><?= '' ?></td>
                        <td><?= '' ?></td>
                        <td><?= '' ?></td>
                        <td>
                            <a href="<?=UrlService::buildWebUrl("/risk/info",[ 'id' => $_item['id'] ] );?>">
                                <i class="fa fa-eye fa-lg"></i>
                            </a>
                        </td>
                    </tr>
				<?php endforeach;?>
			<?php else:?>
                <tr><td colspan="6">暂无数据</td></tr>
			<?php endif;?>
            </tbody>
        </table>
		<?php echo \Yii::$app->view->renderFile("@app/modules/web/views/common/pagination.php", [
			'pages' => $pages,
			'url' => '/risk/index'
		]); ?>

    </div>
</div>
