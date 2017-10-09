<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
		.mdl-card__title.header-section {padding: 0 16px; margin-bottom: -10px}
	</style>
</head>
<body>
<!-- 본문 시작 -->
<!-- The drawer is always open in large screens. The header is always shown, even in small screens. -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
	<header class="mdl-layout__header">
		<div class="mdl-layout__header-row">
			<span class="mdl-layout-title">메일쓰기</span>
			<div class="mdl-layout-spacer"></div>
			<nav class="mdl-navigation"> 
				<a class="mdl-navigation__link" href="javascript:alert('delete');">
					<button	class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn_del">
						<i class="material-icons">delete</i>
					</button>
				</a>
				<a class="mdl-navigation__link" href="javascript:fn_send();">
					<button	class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn_share">
						<i class="material-icons">send</i>
					</button>
				</a>
			</nav>
		</div>
	</header>
<jsp:include page="../../include/leftMenu.jsp"/>
	<main class="mdl-layout__content">
		<div class="page-content">
			<div class="demo-card mdl-card mdl-shadow--2dp mdl-color--grey-100 wAuto">
				<div class="mdl-card__title header-section">
					<h2 class="mdl-card__title-text w100">
						<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label w100">
						    <input class="mdl-textfield__input" type="text" id="toAddr">
							<label class="mdl-textfield__label" for="title">받는 사람</label>
						</div>
					</h2>
				</div>
				<div class="mdl-card__title header-section">
					<h2 class="mdl-card__title-text w100">
						<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label w100">
						    <input class="mdl-textfield__input" type="text" id="ccAddr">
							<label class="mdl-textfield__label" for="ccAddr">참조</label>
						</div>
					</h2>
				</div>
				<div class="mdl-card__title header-section">
					<h2 class="mdl-card__title-text w100">
						<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label w100">
						    <input class="mdl-textfield__input" type="text" id="subject">
							<label class="mdl-textfield__label" for="subject">제목</label>
						</div>
					</h2>
				</div>
			</div>
			<div class="demo-card mdl-card mdl-shadow--2dp wAuto hAuto">
				<div class="mdl-card__title">
				<div class="mdl-textfield mdl-js-textfield w100" style="height: 40%">
					<textarea class="mdl-textfield__input w100 h100" type="text" row="15" id="content"></textarea>
					<label class="mdl-textfield__label" for="content">내용</label>
				</div>
				</div>
			</div>
		</div>
	</main>
</div>
<!-- 본문 끝 -->
<jsp:include page="../../include/include-body.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("onLine Check : " + navigator.onLine);
		})
		
		function fn_send(){
			
			if ( gfn_isNull( $("#toAddr").val().trim() )){
				alert("받는 사람을 입력해 주세요.");
				$("#toAddr").focus();
				return false;
			}
			
			if ( gfn_isNull( $("#subject").val().trim() )){
				alert("제목을 입력해 주세요.");
				$("#subject").focus();
				return false;
			}
			
			if ( gfn_isNull( $("#content").val().trim() )){
				alert("내용을 입력해 주세요.");
				$("#content").focus();
				return false;
			}
			
			var comSubmit = new ComSubmit();
			comSubmit.addParam("toAddr" , $("#toAddr").val());
			comSubmit.addParam("ccAddr" , $("#ccAddr").val());
			comSubmit.addParam("subject", $("#subject").val());
			comSubmit.addParam("content", $("#content").val());
			
			var formData = $("#commonForm").serialize();
			$.ajax({
				type : "POST",
	            cache : false,
	            url : "${ctx}/mail/sendMail.do",
	            data : formData,
	            error:function(response, textStatus, errorThrown){
	                console.log(response.status);
	                console.log(textStatus);
	            },
	            success : function(data){
	            	
	            	if(data.resultCd == "200") {
	            		alert(data.msg);
						comSubmit.setUrl("${ctx}/mail/receiveList.do");
	        			comSubmit.submit();
	            	} else {
	            		alert(data.msg);
	            		$("#commonForm").html("")
	            	}
	            }
	        });
		}
	</script>
</body>
</html>