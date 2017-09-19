
function getMail() {
    if ( !confirm("메일 정보를 가져오시겠습니까?") ) {
        return false;
    }

    var param = {
    		zlogin_id : "8300120"
    };

    $.ajax({
        url         : '/PWA/sample/getMail.do',
        type        : 'GET',
        //cache       : false,
        data        : JSON.stringify(param),
        //contentType : 'application/json; charset=utf-8',
        //traditional : true,
        dataType    : 'json',
        success     : function(result) {
            
            if ( result.status == true ) {
                //location.href = "/com/board/faqMgmtList";
            	alert("성공");
            }
            else {
            	alert("asdf");
                //fq_alert_msg(result.message);
            };
        },
        error: function(result) {
           // fq_ajax_sys_error(result);
            alert("err");
        }
    });
}