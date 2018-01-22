<?php
use app\common\services\StaticService;


StaticService::includeAppJsStatic("/js/web/role/set.js", \app\assets\WebAsset::className());
?>
<?php echo \Yii::$app->view->renderFile("@app/modules/web/views/common/tab_role.php", ['current' => 'index']); ?>

<div class="row mg-t20 wrap_role_set">
    <div class="col-lg-12">
        <h2 class="text-center">权限设置</h2>
        <div class="form-horizontal m-t">
            <div class="hr-line-dashed"></div>
            <div class="form-group">
                <label class="col-lg-2 control-label">权限名称:</label>
                <div class="col-lg-8">
                    <input type="text" class="form-control" placeholder="请输入权限名称" name="name"
                           value="<?= $info ? $info['name'] : ''; ?>">
                </div>
                <div class="col-lg-2"></div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
                <label class="col-lg-2 control-label">功能列表:</label>
                <div class="col-lg-8">
                    <label class="checkbox-inline">
                        <input type="checkbox" id='select_all'> 全选
                    </label>
                    <?php foreach ($role_list as $role): ?>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="roles" value="<?= $role['id'] ?>" <?php if(isset($role['checked']) && $role['checked']):?> checked <?php endif;?>> <?= $role['name'] ?>
                        </label>
                    <?php endforeach; ?>
                </div>
                <div class="col-lg-2"></div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
                <div class="col-lg-4 col-lg-offset-2">
                    <input type="hidden" name="id" value="<?= $info ? $info['id'] : 0; ?>">
                    <button class="btn btn-w-m btn-outline btn-primary save">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>
