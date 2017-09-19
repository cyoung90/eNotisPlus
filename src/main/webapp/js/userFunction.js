$(document).ready(function() {

	// 1. edit 버튼 클릭
	$("#btn_writeMail").click(function() {
		common.openWriteMail();
	});
	
});
		
var common = {
	// 1. edit 버튼 클릭
	openWriteMail : function(obj) {
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/mail/writeMail.do'/>");
		comSubmit.submit();
	}
}