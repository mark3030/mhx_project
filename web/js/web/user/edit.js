;
var user_edit_ops = {
    init:function(){
        this.eventBind();
    },
    eventBind:function(){
        var that = this;
        $(".user_edit_wrap .save").click(function(){
            var btn_target  = $(this);
            if( btn_target.hasClass("disabled") ){
                common_ops.alert("正在处理，请不要频繁点击~~");
                return;
            }

            var nickname_target = $(".user_edit_wrap input[name=nickname]");
            var nickname = nickname_target.val();

            var ident_target = $(".user_edit_wrap input[name=ident]");
            var ident = ident_target.val();

            if( !nickname || nickname.length < 2 ){
                common_ops.tip("请输入符合规范的姓名~~",nickname_target);
                return false;
            }

            if( !ident || ident.length < 2 ){
                common_ops.tip("请输入符合规范的邮箱地址~~",ident_target);
                return false;
            }


            btn_target.addClass("disabled");

            var data = {
                nickname:nickname,
                ident:ident
            };

            $.ajax({
                url:common_ops.buildWebUrl('/user/edit'),
                type:'POST',
                data:data,
                dataType:'json',
                success:function(res){
                    btn_target.removeClass("disabled");
                    var callback = null;
                    if( res.code == 200 ){
                        callback = function(){
                            window.location.href = window.location.href;
                        }
                    }
                    common_ops.alert( res.msg,callback );
                }
            });
        });

    }
};
$(document).ready(function(){
    user_edit_ops.init();
});