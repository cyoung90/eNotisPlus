<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>${titleName}</title>
<style>
#btn_sendMail {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
}
</style>
</head>
<body>
<form id="frm" name="frm">

</form>
<!-- The drawer is always open in large screens. The header is always shown, even in small screens. -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
	<header class="mdl-layout__header">
		<div class="mdl-layout__header-row">
			<span class="mdl-layout-title">메일</span>
			<div class="mdl-layout-spacer"></div>
			<nav class="mdl-navigation"> 
				<a class="mdl-navigation__link" href="javascript:alert('delete');">
					<button	class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn_del">
						<i class="material-icons">delete</i>
					</button>
				</a>
				<a class="mdl-navigation__link" href="javascript:alert('share');">
					<button	class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn_share">
						<i class="material-icons">share</i>
					</button>
				</a>
				<a class="mdl-navigation__link" href="javascript:alert('reply');">
					<button	class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn_reply">
						<i class="material-icons">reply</i>
					</button>
				</a>
			</nav>
		</div>
	</header>
<jsp:include page="../../include/leftMenu.jsp" />
	<main class="mdl-layout__content">
		<div class="page-content">
			<div class="demo-card mdl-card mdl-shadow--2dp mdl-color--grey-100" style="width: auto;min-height: 150;" id="mail_header">
				<div class="mdl-card__title">
					<h2 class="mdl-card__title-text">메일 제목입니다.</h2>
				</div>
				<div class="mdl-card__supporting-text">
					<div>
						<h>보낸사람 : </h>
						<span class="mdl-chip mdl-chip--contact">
						    <span class="mdl-chip__contact mdl-color--teal mdl-color-text--white">A</span>
						    <span class="mdl-chip__text">Contact Chip</span>
						</span>
					</div>
					<div>
						날짜 : <span>2017년 9월 16일 오후 8:58</span>
					</div>
				</div>
				<div class="mdl-card__menu">
					<button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
						<i class="material-icons">start</i>
					</button>
				</div>
			</div>
			<div class="demo-card mdl-card mdl-shadow--2dp" style="width: auto;min-height: 150 ; padding: 10px;white-space: pre-wrap;" id="mail-content">
	같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는
것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은과 용기가 있다 그러므로 그들은
이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을
! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하★

며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을
보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의
소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며
			</div>

















			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet">Content</div>
				<div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet">goes</div>
				<div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet">here</div>
			</div>
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--2-col mdl-cell--4-col-phone">CS
					2 (4 on phone)</div>
				<div class="mdl-cell mdl-cell--2-col mdl-cell--4-col-phone">CS
					2 (4 on phone)</div>
				<div class="mdl-cell mdl-cell--2-col mdl-cell--4-col-phone">CS
					2 (4 on phone)</div>
				<div class="mdl-cell mdl-cell--2-col mdl-cell--4-col-phone">CS
					2 (4 on phone)</div>
			</div>

		</div>
		<footer class="mdl-mini-footer">
		<div class="mdl-mini-footer__left-section">
			<div class="mdl-logo">Mini-footer Heading</div>
			<ul class="mdl-mini-footer__link-list">
				<li><a href="">Link 1</a></li>
				<li><a href="">Link 2</a></li>
				<li><a href="">Link 3</a></li>
			</ul>
		</div>
		<div class="mdl-mini-footer__right-section">
			<button class="mdl-mini-footer__social-btn"></button>
			<button class="mdl-mini-footer__social-btn"></button>
			<button class="mdl-mini-footer__social-btn"></button>
		</div>
		</footer>
	</main>
</div>
</body>
<!-- 본문 끝 -->
<script>
	$(document).ready(function() {
		$("#btn_sendMail").click(function(e) {
			if (!navigator.onLine) {
				alert("OFFLINE");
				return false;
			} // network Check

			var frm = document.getElementById("frm");
			frm.method = "POST";
			frm.action = "${ctx}/main/login.do";
			frm.submit();
			e.preventDefault();
		})
	})
</script>

</html>