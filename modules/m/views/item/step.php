<?php
use app\common\services\StaticService;
use app\common\services\UrlService;
use app\common\services\UtilService;
StaticService::includeAppJsStatic( "/js/m/item/bind.js",\app\assets\MAsset::className() );
?>
<?php if($active):?>
    <?php if( $info ):?>
        <div class="page_title clearfix">
            <span><?= $info ? UtilService::encode($info['name']) : ''; ?></span>
        </div>
        <div id="slideBox" class="slideBox">
            <div class="bd">
                <ul>
                    <li><img style="max-height: 150px;" src="<?=UrlService::buildPicUrl("brand",$info["logo"]);?>" /></li>
                </ul>
            </div>
        </div>
    <?php endif;?>
    <div class="login_form_wrap">
        <div class="form_box">
            <div class="form_input_box">
                <span class="fa fa-mobile fa-2x"></span>
                <input name="mobile" type="text" placeholder="请输入手机号码" class="form_input" value="" />
            </div>
            <div class="form_input_box captcha_code">
                <input name="img_captcha" type="text" placeholder="请输入图形验证码" value="" class="form_input" />
                <img src="<?=UrlService::buildWwwUrl("/default/img_captcha");?>" onclick="this.src='<?=UrlService::buildWwwUrl("/default/img_captcha");?>?'+Math.random();"/>
            </div>
            <div class="form_input_box phone_code">
                <span class="fa fa-lock fa-2x"></span>
                <input name="captcha_code" type="text" placeholder="请输入手机验证码" class="form_input" />
                <button type="button" class="get_captcha">获取验证码</button>
            </div>
        </div>
        <div class="op_box">
            <input style="width: 100%;" type="button" value="下一步" class="red_btn next"  />
        </div>
    </div>
<?php else:?>
    <div class="no-data">该渠道已失效，请联系客服！！！</div>
<?php endif;?>
