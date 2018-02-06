<?php
use \app\common\services\StaticService;
use \app\common\services\UrlService;
use \app\common\services\UtilService;
StaticService::includeAppJsStatic( "/js/m/user/address_set.js",\app\assets\MAsset::className() );
?>

<?php if($active):?>
<div class="page_title clearfix">
    <span><?= $info ? UtilService::encode($info['name']) : ''; ?></span>
</div>
<div class="addr_form_box">
    <div class="addr_input_box">
        <span>姓名</span>
        <input name="username" type="text" placeholder="请输入姓名" class="addr_input"  />
    </div>
    <div class="addr_input_box">
        <span>身份证号</span>
        <input name="ident" type="text" placeholder="请输入身份证号" class="addr_input"  />
    </div>
    <div class="addr_input_box">
        <span>借款金额</span>
        <input name="money" type="text" placeholder="请输入借款金额" class="addr_input"  />
    </div>
    <div class="addr_input_box">
        <span>手机号</span>
        <input name="mobile" type="text" placeholder="请输入手机号" class="addr_input"  />
    </div>
    <div class="addr_input_box">
        <span>紧急联系人1</span>
        <div class="select_box">
            <select id="contacts_one">
                <option value="0">选择类型</option>
                <?php foreach($contacts_mapping as $contacts_id => $contacts_name ):?>
                    <option value="<?=$contacts_id?>"><?=$contacts_name?></option>
                <?php endforeach;?>
            </select>
        </div>
        <input name="contacts_one_mobile" type="text" placeholder="请输入紧急联系人1电话" class="addr_input"  />
    </div>
    <div class="addr_input_box">
        <span>紧急联系人2</span>
        <div class="select_box">
            <select id="contacts_two">
                <option value="0">选择类型</option>
                <?php foreach($contacts_mapping as $contacts_id => $contacts_name ):?>
                    <option value="<?=$contacts_id?>"><?=$contacts_name?></option>
                <?php endforeach;?>
            </select>
        </div>
        <input name="contacts_two_mobile" type="text" placeholder="请输入紧急联系人2电话" class="addr_input"  />
    </div>
	<div class="addr_input_box">
		<span>所在地区</span>
		<div class="select_box">
			<select id="province_id">
                <option value="0">请选择省</option>
				<?php foreach($province_mapping as $_province_id => $_province_name ):?>
                    <option value="<?=$_province_id?>"><?=$_province_name?></option>
				<?php endforeach;?>
			</select>
		</div>
		<div class="select_box">
			<select id="city_id">
                <option value="0">请选择市</option>
			</select>
		</div>
		<div class="select_box">
			<select id="area_id">
                <option value="0">请选择区</option>
			</select>
		</div>
	</div>
	<div class="addr_input_box">
        <span>详细地址</span>
        <textarea name="address" rows="2" cols="20" placeholder="详细地址" class="addr_textarea"></textarea>
    </div>
</div>
<div class="op_box">
    <input style="width: 100%;"  type="button" value="保存" class="red_btn save" />
</div>

<div class="hidden hide_wrap">
    <input name="id" type="hidden" >
    <input type="hidden" id="area_id_before" >
    <input type="hidden" id="city_id_before" >
</div>
<?php else:?>
    <div class="no-data">该渠道已失效，请联系客服！！！</div>
<?php endif;?>