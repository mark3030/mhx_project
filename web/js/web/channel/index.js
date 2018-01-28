;
var channel_index_ops = {
    init: function () {
        this.eventBind();
    },
    eventBind: function () {
        $('#qrcode_model').on('show.bs.modal', function (event) {
            var a = $(event.relatedTarget);
            var recipient = a.data('qrcode');
            var modal = $(this);
            modal.find('.modal-body img').attr('src',recipient);
        });
        var that = this;
        $(".remove").click( function(){
            that.ops( "remove",$(this).attr("data") )
        });

        $(".recover").click( function(){
            that.ops( "recover",$(this).attr("data") )
        });

    },
    ops:function( act,id ){
        var callback = {
            'ok':function(){
                $.ajax({
                    url:common_ops.buildWebUrl("/channel/ops"),
                    type:'POST',
                    data:{
                        act:act,
                        id:id
                    },
                    dataType:'json',
                    success:function( res ){
                       // var callback = null;
                        if( res.code == 200 ){
                            //callback = function(){
                            window.location.href = window.location.href;
                            // }
                        }
                        //common_ops.alert( res.msg,callback );
                    }
                });
            },
            'cancel':null
        };
        common_ops.confirm( ( act=="remove" )?"确定禁用？":"确定恢复？",callback );
    }
};

$(document).ready(function () {
    channel_index_ops.init();
});