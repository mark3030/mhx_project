;

var account_set_ops = {
    init:function(){
        this.eventBind();
    },
    eventBind:function(){

        $(".wrap_account_set .save").click( function(){
            var btn_target = $(this);
            if( btn_target.hasClass("disabled") ){
                common_ops.alert("正在处理!!请不要重复提交");
                return;
            }

            var nickname_target = $(".wrap_account_set input[name=nickname]");
            var nickname = nickname_target.val();
            var mobile_target = $(".wrap_account_set input[name=mobile]");
            var mobile = mobile_target.val();
            var ident_target = $(".wrap_account_set input[name=ident]");
            var ident = ident_target.val();
            var role_target= $(".wrap_account_set .role_selector");
            var role = role_target.find("option:selected").val();
            var leader_target= $(".wrap_account_set .leader_selector");
            var leader = leader_target.find("option:selected").val();
            var login_name_target = $(".wrap_account_set input[name=login_name]");
            var login_name = login_name_target.val();
            var login_pwd_target = $(".wrap_account_set input[name=login_pwd]");
            var login_pwd = login_pwd_target.val();

            if( nickname.length < 1 ){
                common_ops.tip( "请输入符合规范的姓名" ,nickname_target );
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
                nickname:nickname,
                mobile:mobile,
                ident:ident,
                role:role,
                leader:leader,
                login_name:login_name,
                login_pwd:login_pwd,
                id:$(".wrap_account_set input[name=id]").val()
            };

            $.ajax({
                url:common_ops.buildWebUrl("/account/set") ,
                type:'POST',
                data:data,
                dataType:'json',
                success:function(res){
                    btn_target.removeClass("disabled");
                    var callback = null;
                    if( res.code == 200 ){
                        callback = function(){
                            window.location.href = common_ops.buildWebUrl("/account/index");
                        }
                    }
                    common_ops.alert( res.msg,callback );
                }
            });
        });
    }
};

$(document).ready( function(){
    account_set_ops.init();
});