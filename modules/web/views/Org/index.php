<?php
use \app\common\services\ConstantMapService;
use \app\common\services\UrlService;
use \app\common\services\UtilService;
use \app\common\services\StaticService;

StaticService::includeAppJsStatic("/js/web/org/index.js", \app\assets\WebAsset::className());
?>

<?php echo Yii::$app->view->renderFile("@app/modules/web/views/common/tab_account.php", ['current' => 'index']); ?>

<div class="row">
    <div class="col-lg-12">
        <form class="form-inline wrap_search">
            <div class="row m-t p-w-m">
                <div class="form-group">
                    <select name="status" class="form-control inline">
                        <option value="<?= ConstantMapService::$status_default; ?>">请选择状态</option>
                        <?php foreach ($status_mapping as $_status => $_title): ?>
                            <option
                                value="<?= $_status; ?>" <?php if ($search_conditions['status'] == $_status): ?> selected <?php endif; ?> ><?= $_title; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="form-group">
                    <div class="input-group ">
                        <input type="text" name="mix_kw" placeholder="机构/管理者名称" class="form-control "
                               value="<?= $search_conditions['mix_kw']; ?>">
                        <input type="hidden" name="p" value="<?= $search_conditions['p']; ?>">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-primary search">
                                <i class="fa fa-search"></i>搜索
                            </button>
                        </span>
                    </div>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-lg-12">
                    <a class="btn btn-w-m btn-outline btn-primary pull-right"
                       href="<?= UrlService::buildWebUrl("/org/set"); ?>">
                        <i class="fa fa-plus"></i>添加机构
                    </a>
                </div>
            </div>
        </form>
        <table class="table table-bordered m-t">
            <thead>
            <tr>
                <th>机构</th>
                <th>机构管理者</th>
                <th>截至日期</th>
                <th>账户余额 (元)</th>
                <th>录入日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <?php if ($list): ?>
                <?php foreach ($list as $_item): ?>
                    <tr>
                        <td><?= UtilService::encode($_item['org_name']); ?></td>
                        <td><?= UtilService::encode($_item['nickname']); ?></td>
                        <td><?= UtilService::encode(substr($_item['deadline'],0,10)); ?></td>
                        <td><?= UtilService::encode($_item['balance']); ?></td>
                        <td><?= UtilService::encode($_item['created_time']); ?></td>
                        <td>
                            <a href="<?= UrlService::buildWebUrl("/org/info", ['uid' => $_item['uid']]); ?>">
                                <i class="fa fa-eye fa-lg"></i>
                            </a>
                            <?php if ($_item['status']): ?>
                                <a class="m-l"
                                   href="<?= UrlService::buildWebUrl("/org/set", ['uid' => $_item['uid']]); ?>">
                                    <i class="fa fa-edit fa-lg"></i>
                                </a>

                                <a class="m-l remove" href="<?= UrlService::buildNullUrl(); ?>"
                                   data="<?= $_item['uid']; ?>">
                                    <i class="fa fa-trash fa-lg"></i>
                                </a>
                            <?php else: ?>
                                <a class="m-l recover" href="<?= UrlService::buildNullUrl(); ?>"
                                   data="<?= $_item['uid']; ?>">
                                    <i class="fa fa-rotate-left fa-lg"></i>
                                </a>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="6">暂无数据</td>
                </tr>
            <?php endif; ?>
            </tbody>
        </table>

        <!--分页代码已被封装到统一模板文件中-->
        <?php echo \Yii::$app->view->renderFile("@app/modules/web/views/common/pagination.php", [
            'pages' => $pages,
            'url' => "/org/index"
        ]); ?>
    </div>
</div>

