<?php
use \app\common\services\UrlService;
use \app\common\services\StaticService;
use \app\common\services\UtilService;
StaticService::includeAppJsStatic( "/js/m/default/index.js",\app\assets\MAsset::className() );
?>

<?php if($active):?>
    <div class="page_title clearfix">
        <span><?= $info ? UtilService::encode($info['name']) : ''; ?></span>
    </div>
    <div class="fastway_list_box">
        <ul class="fastway_list">
            <li><a href="<?=UrlService::buildMUrl("/product/cart");?>"><b class="icon fa fa-address-book-o  fa-lg"></b><i class="right_icon"></i><span>基本信息（已完成）</span></a></li>
            <li><a href="<?=UrlService::buildMUrl("/user/order");?>"><b class="icon fa fa-credit-card fa-lg"></b><i class="right_icon"></i><span>芝麻信用</span></a></li>
            <li><a href="<?=UrlService::buildMUrl("/user/fav");?>"><b class="icon fa fa-shopping-cart fa-lg"></b><i class="right_icon"></i><span>电商认证</span></a></li>
            <li><a href="<?=UrlService::buildMUrl("/user/comment");?>"><b class="icon fa fa-tty fa-lg"></b><i class="right_icon"></i><span>运营商</span></a></li>
        </ul>
    </div>
<?php else:?>
    <div class="no-data">该渠道已失效，请联系客服！！！</div>
<?php endif;?>