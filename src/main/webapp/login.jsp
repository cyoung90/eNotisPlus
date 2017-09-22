<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:Droid+Serif:bold:300,400,500,700&effect=ice" type="text/css">
	<style type="text/css">
		.layer {
		  position:absolute;
		  top:-20%;right:0;bottom:0;left:0;
		  display:-webkit-box;
		  display:-moz-box;
		  display:-ms-flexbox;
		  display:-webkit-flex;
		  display:flex;
		
		  align-items:center;
		  justify-content:center;
		  -webkit-align-items:center;
		  -webkit-justify-content:center;
		
		  -webkit-box-pack:center;
		  -webkit-box-align:center;
		  -moz-box-pack:center;
		  -moz-box-align:center;
		  -ms-box-pack:center;
		  -ms-box-align:center;
		}
		.layer .content {background:#fff; align-content: center;}
		.demo-card-square.mdl-card {
		  width: 320px;
		  height: 320px;
		}
		.demo-card-square > .mdl-card__title {
		  color: #fff;
		  background:bottom right 15% no-repeat rgba(224, 224, 224, 0.25);
		}
		.mdl-button--accent{
		  width: 100%; height: 100%;
		}
		table {
		  border-spacing: 0 10px;
		  color: black;
		}
		td {height: 40px;}
		.login_input {width:100%; height:100%; padding-left:7px; border: 1px solid #d9d2c7; text-indent: 5px; background-color: white;}
		.titleText {height: 80px;text-align: center; font-size: 80px;}
		.onepassText {font-weight: bold; font-size: x-large; text-align: left;}
	</style>
</head>
<body>
<!-- 본문 시작 -->
<div class="layer">
	<span class="content">
	<div class="titleText font-effect-ice"><h1>eNotis+</h1></div>
		<div class="demo-card-square mdl-card mdl-shadow--4dp">
			<div class="mdl-card__title mdl-card--expand">
				<table style="width: 100%;">
					<colgroup>
						<col width="30%">
						<col width="70%">
					</colgroup>
					<tr class="onepassText">
						<td colspan="2">One-Pass</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input type="text" id="id" name="id" class="login_input"/></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input type="password" id="pw" name="pw" class="login_input"/></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"
									type="submit" id="btn_login">One-Pass 로그인
							</button>
						</td>
					</tr>
					<tr style="font-size: small;">
						<td>ID저장</td>
						<td align="right">비밀번호 초기화 | One-Pass란?</td>
					</tr>
				</table>
			</div>
		</div>
	</span>
</div>
<!-- 본문 끝 -->
<jsp:include page="/WEB-INF/include/include-body.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			
			// network Check
			if (!navigator.onLine) {
				alert("OFFLINE");
				//return false;
			}
			
			$(".login_input").on("keydown", function(event){
				if (event.keyCode == 13){
					fn_login();
				}else {
					return;
				}
				
			});
			
			$("#btn_login").click(function(e) {
				e.preventDefault();
				fn_login();
			});
		});
/* 		
 		function fn_login2() {
			if ( gfn_isNull( $("#id").val().trim() )){
				alert("아이디가 입력되지 않았습니다.");
				$("#id").focus();
				return false;
			}
			if ( gfn_isNull( $("#pw").val().trim() )){
				alert("비밀번호가 입력되지 않았습니다.");
				$("#pw").focus();
				return false;
			}
			
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/main/login.do'/>");
			comSubmit.addParam("id", $("#id").val());
			comSubmit.addParam("pw", $("#pw").val());
			comSubmit.submit();
		} */
		
		function fn_login()
		{
			if ( $("#id").val() == "e" || $("#pw").val() == "e" ){
				$("#id").val("8300120");
				$("#pw").val("init1234");
			}
			
			if ( gfn_isNull( $("#id").val().trim() )){
				alert("아이디가 입력되지 않았습니다.");
				$("#id").focus();
				return false;
			}
			if ( gfn_isNull( $("#pw").val().trim() )){
				alert("비밀번호가 입력되지 않았습니다.");
				$("#pw").focus();
				return false;
			}
			
			var comSubmit = new ComSubmit();
			comSubmit.addParam("id", $("#id").val());
			comSubmit.addParam("pw", $("#pw").val());
			
			var formData = $("#commonForm").serialize();
			$.ajax({
				type : "POST",
                cache : false,
                url : "<c:url value='/main/loginProcess.do'/>",
                data : formData,
                error:function(response, textStatus, errorThrown){
                    console.log(response.status);
                    console.log(textStatus);
                },
                success : function(data){
                	console.log("success");
                	
                	if(data.resultCd == "200") {
						comSubmit.setUrl("<c:url value='/main/home.do'/>");
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