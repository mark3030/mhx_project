<?php
use \app\common\services\UrlService;
use \app\common\services\StaticService;
use \app\common\services\ConstantMapService;
StaticService::includeAppCssStatic( "/plugins/datetimepicker/jquery.datetimepicker.min.css",\app\assets\WebAsset::className() );
StaticService::includeAppJsStatic( "/plugins/datetimepicker/jquery.datetimepicker.full.min.js",\app\assets\WebAsset::className() );
StaticService::includeAppJsStatic( "/js/web/org/set.js",\app\assets\WebAsset::className() );
?>

<?php echo \Yii::$app->view->renderFile("@app/modules/web/views/common/tab_org.php", ['current' => 'index']); ?>

<div class="row m-t  wrap_org_set">
	<div class="col-lg-12">
		<h2 class="text-center">机构设置</h2>
		<div class="form-horizontal m-t m-b">
			<div class="form-group">
				<label class="col-lg-3 control-label">机构名称:</label>
				<div class="col-lg-7 input-group">
					<input type="text" name="org_name" autocomplete="on" class="form-control" placeholder="请输入机构名称" value="<?=$info?$info['org_name']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">管理员姓名:</label>
				<div class="col-lg-7 input-group">
					<input type="text" name="nickname" autocomplete="on" class="form-control" placeholder="请输入管理员姓名" value="<?=$info?$info['nickname']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">管理员电话:</label>
				<div class="col-lg-7 input-group">
					<input type="text" name="mobile" autocomplete="on" class="form-control" placeholder="请输入管理员电话" value="<?=$info?$info['mobile']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">管理员身份证:</label>
				<div class="col-lg-7 input-group">
					<input type="text" name="ident" autocomplete="on" class="form-control" placeholder="请输入管理员身份证" value="<?=$info?$info['ident']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">账户金额:</label>
				<div class="col-lg-2 input-group">
					<input type="text" name="balance" class="form-control" autocomplete="off" placeholder="请输入账户金额" value="<?=$info?$info['balance']:'';?>">
					<span class="input-group-addon">元</span>
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">截止时间:</label>
				<div class="input-group ">
					<input type="text" placeholder="请选择截止时间" name="deadline" class="form-control"  value="<?=$info?$info['deadline']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">登录名:</label>
				<div class="col-lg-7 input-group">
					<input type="text" name="login_name" class="form-control" autocomplete="off" placeholder="请输入登录名" value="<?=$info?$info['login_name']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">登录密码:</label>
				<div class="col-lg-7 input-group">
					<input type="password" name="login_pwd" class="form-control"  autocomplete="new-password" placeholder="请输入登录密码" value="<?=$info?ConstantMapService::$default_password:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<div class="col-lg-5 col-lg-offset-3">
                    <input type="hidden" name="id" value="<?=$info?$info['uid']:0;?>">
					<input type="hidden" name="org_id" value="<?=$info?$info['org_id']:0;?>">
					<button class="btn btn-w-m btn-outline btn-primary save">保存</button>
				</div>
			</div>
		</div>
	</div>
</div>

