;

var account_set_ops = {
    init:function(){
        this.eventBind();
        this.datetimepickerComponent();
    },
    eventBind:function(){

        $(".wrap_org_set .save").click( function(){
            var btn_target = $(this);
            if( btn_target.hasClass("disabled") ){
                common_ops.alert("正在处理!!请不要重复提交~~");
                return;
            }

            var org_name_target = $(".wrap_org_set input[name=org_name]");
            var org_name = org_name_target.val();

            var nickname_target = $(".wrap_org_set input[name=nickname]");
            var nickname = nickname_target.val();

            var mobile_target = $(".wrap_org_set input[name=mobile]");
            var mobile = mobile_target.val();

            var ident_target = $(".wrap_org_set input[name=ident]");
            var ident = ident_target.val();

            var balance_target = $(".wrap_org_set input[name=balance]");
            var balance = balance_target.val();

            var deadline_target = $(".wrap_org_set input[name=deadline]");
            var deadline = deadline_target.val();

            var login_name_target = $(".wrap_org_set input[name=login_name]");
            var login_name = login_name_target.val();

            var login_pwd_target = $(".wrap_org_set input[name=login_pwd]");
            var login_pwd = login_pwd_target.val();

            if( org_name.length < 1 ){
                common_ops.tip( "请输入机构名称" ,org_name_target );
                return;
            }

            if( nickname.length < 1 ){
                common_ops.tip( "请输入管理员姓名" ,nickname_target );
                return;
            }

            if( !common_ops.check('mobile',mobile) ){
                common_ops.tip("请输入符合规范的手机号码",mobile_target);
                return;
            }

            if( !common_ops.check('ident',ident) ){
                common_ops.tip("请输入符合规范的身份证",ident_target);
                return;
            }

            if( balance.length < 1  ){
                common_ops.tip("请输入金额",balance_target);
                return;
            }

            if( deadline.length < 1  ){
                common_ops.tip("请输入截止日期",deadline_target);
                return;
            }

            if( login_name.length < 1  ){
                common_ops.tip("请输入符合规范的登录名",login_name_target);
                return;
            }

            if( login_pwd.length < 1  ){
                common_ops.tip("请输入符合规范的登录密码",login_pwd_target);
                return;
            }

            btn_target.addClass("disabled");

            var data = {
                org_name:org_name,
                nickname:nickname,
                mobile:mobile,
                ident:ident,
                balance:balance,
                deadline:deadline,
                login_name:login_name,
                login_pwd:login_pwd,
                id:$(".wrap_org_set input[name=id]").val(),
                org_id:$(".wrap_org_set input[name=org_id]").val()
            };

            $.ajax({
                url:common_ops.buildWebUrl("/org/set") ,
                type:'POST',
                data:data,
                dataType:'json',
                success:function(res){
                    btn_target.removeClass("disabled");
                    var callback = null;
                    if( res.code == 200 ){
                        callback = function(){
                            window.location.href = common_ops.buildWebUrl("/org/index");
                        }
                    }
                    common_ops.alert( res.msg,callback );
                }
            });
        });
    },

    datetimepickerComponent:function(){
        var that = this;
        $.datetimepicker.setLocale('zh');
        params = {
            scrollInput: false,
            scrollMonth: false,
            scrollTime: false,
            dayOfWeekStart: 1,
            lang: 'zh',
            todayButton: true,//回到今天
            defaultSelect: true,
            defaultDate: new Date().Format('yyyy-MM-dd'),
            format: 'Y-m-d',//格式化显示
            timepicker: false
        };
        $('.wrap_org_set input[name=deadline]').datetimepicker(params);

    },
};

$(document).ready( function(){
    account_set_ops.init();
});