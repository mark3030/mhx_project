<?php
use \app\common\services\UrlService;
use \app\common\services\StaticService;
use \app\common\services\ConstantMapService;
StaticService::includeAppJsStatic( "/js/web/account/set.js",\app\assets\WebAsset::className() );
?>

<?php echo \Yii::$app->view->renderFile("@app/modules/web/views/common/tab_account.php", ['current' => 'index']); ?>

<div class="row m-t  wrap_account_set">
	<div class="col-lg-12">
		<h2 class="text-center">账号设置</h2>
		<div class="form-horizontal m-t m-b">
			<div class="form-group">
				<label class="col-lg-3 control-label">姓名:</label>
				<div class="col-lg-7">
					<input type="text" name="nickname" class="form-control" placeholder="请输入姓名~~" value="<?=$info?$info['nickname']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">手机:</label>
				<div class="col-lg-7">
					<input type="text" name="mobile" class="form-control" placeholder="请输入手机~~" value="<?=$info?$info['mobile']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">身份证:</label>
				<div class="col-lg-7">
					<input type="text" name="ident" class="form-control" placeholder="请输入身份证~~" value="<?=$info?$info['ident']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group" data-toggle="buttons">
				<label class="col-lg-3 control-label">角色:</label>
				<div class="col-lg-7 btn-group">
					<label class="btn <?php if($info && $info['role'] == 1 || !$info):?>active<?php endif;?>">
						<input type="radio" name="role" value="1"> 初审员
					</label>
					<label class="btn <?php if($info && $info['role'] == 2):?>active<?php endif;?>">
						<input type="radio" name="role" value="2"> 复审员
					</label>
					<label class="btn <?php if($info && $info['role'] == 3):?>active<?php endif;?>">
						<input type="radio" name="role" value="3"> 终审员
					</label>
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">登录名:</label>
				<div class="col-lg-7">
					<input type="text" name="login_name" class="form-control" autocomplete="off" placeholder="请输入登录名~~" value="<?=$info?$info['login_name']:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-lg-3 control-label">登录密码:</label>
				<div class="col-lg-7">
					<input type="password" name="login_pwd" class="form-control"  autocomplete="new-password" placeholder="请输入登录密码~~" value="<?=$info?ConstantMapService::$default_password:'';?>">
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<div class="col-lg-5 col-lg-offset-3">
                    <input type="hidden" name="id" value="<?=$info?$info['uid']:0;?>">
					<button class="btn btn-w-m btn-outline btn-primary save">保存</button>
				</div>
			</div>
		</div>
	</div>
</div>

