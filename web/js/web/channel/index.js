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
        })
    }
};

$(document).ready(function () {
    channel_index_ops.init();
});