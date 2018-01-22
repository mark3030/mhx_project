;

var role_set_ops = {
    init:function(){
        this.eventBind();
        this.selectAll();
    },
    eventBind:function(){

        $(".wrap_role_set .save").click( function(){
            var btn_target = $(this);
            if( btn_target.hasClass("disabled") ){
                common_ops.alert("正在处理!!请不要重复提交");
                return;
            }

            var name_target = $(".wrap_role_set input[name=name]");
            var name = name_target.val();


            var role_target = $("#select_all");
            var roles="";
            $(".wrap_role_set input[name=roles]").each(function() {
                if ($(this).prop("checked")) {
                    roles += ","+$(this).val();
                }
            })

            if( name.length < 1 ){
                common_ops.tip( "请输入符合规范的角色名称" ,name_target );
                return;
            }

            if( roles.length < 1 ){
                common_ops.tip( "请选择权限" ,role_target );
                return;
            }



            btn_target.addClass("disabled");

            var data = {
                name:name,
                roles:roles,
                id:$(".wrap_role_set input[name=id]").val()
            };

            $.ajax({
                url:common_ops.buildWebUrl("/role/set") ,
                type:'POST',
                data:data,
                dataType:'json',
                success:function(res){
                    btn_target.removeClass("disabled");
                    var callback = null;
                    if( res.code == 200 ){
                        callback = function(){
                            window.location.href = common_ops.buildWebUrl("/role/index");
                        }
                    }
                    common_ops.alert( res.msg,callback );
                }
            });
        });
    },

    selectAll:function () {
        $("#select_all").click(function() {
            if ($(this).prop("checked")) {
                $(".wrap_role_set input[name=roles]").each(function() {
                    $(this).prop("checked", true);
                });
            } else {
                $(".wrap_role_set input[name=roles]").each(function() {
                    $(this).prop("checked", false);
                });
            }
        });
    }

};

$(document).ready( function(){
    role_set_ops.init();
});