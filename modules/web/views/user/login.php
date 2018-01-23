<?php
use \app\common\services\UrlService;
?>
<div class="loginColumns animated fadeInDown">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="ibox-content">
				<form class="m-t" role="form" action="<?=UrlService::buildWebUrl("/user/login");?>" method="post">
                    <div class="form-group text-center">
                        <h2 class="font-bold">登录</h2>
                    </div>
					<div class="form-group">
						<input type="text" name="login_name" class="form-control" placeholder="请输入登录用户名">
					</div>
					<div class="form-group">
						<input type="password" name="login_pwd" class="form-control" placeholder="请输入登录密码">
					</div>
					<button type="submit" class="btn btn-primary block full-width m-b">登录</button>
				</form>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
	<hr>
</div>