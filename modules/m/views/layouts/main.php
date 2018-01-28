<?php
use \app\common\services\UrlService;
use \app\common\services\UtilService;
\app\assets\MAsset::register($this);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!-- Set render engine for 360 browser -->
	<meta name="renderer" content="webkit">
	<title><?=Yii::$app->params['title'];?></title>
	<?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
<div style="min-height: 500px;">
	<?=$content;?>
</div>

<div class="layout_hide_wrap hidden">
    <input type="hidden" id="share_info" value='<?=Yii::$app->getView()->params['share_info'];?>'>
</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
