<?php
use \app\common\services\UrlService;
?>
<div class="row">
    <div class="col-lg-12">
        <span class="pagination_count" style="line-height: 40px;">共<?=$pages['total_count'];?>条记录 | 每页<?=$pages['page_size'];?>条 </span>
        <ul class="pager pagination-lg pull-right" style="margin: 0 0 ;">
            <?php $totalPage = ceil($pages['total_count'] / $pages['page_size'])?>
            <?php if($totalPage > 1){ ?>
                <?php if($pages['p'] == 1){?>
                    <li>
                        <a href="<?=UrlService::buildWebUrl( $url,[ 'p' => $pages['p'] + 1 ] )?>">下一页</a>
                    </li>
                <?php }elseif($pages['p'] == $totalPage){?>
                    <li>
                        <a href="<?=UrlService::buildWebUrl( $url,[ 'p' => $pages['p'] - 1 ] )?>">上一页</a>
                    </li>
                <?php }else{?>
                    <li>
                        <a href="<?=UrlService::buildWebUrl( $url,[ 'p' => $pages['p'] - 1 ] )?>">上一页</a>
                    </li>
                    <li>
                        <a href="<?=UrlService::buildWebUrl( $url,[ 'p' => $pages['p'] + 1 ] )?>">下一页</a>
                    </li>
                <?php };?>
            <?php };?>
        </ul>
    </div>
</div>