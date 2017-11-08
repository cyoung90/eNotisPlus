<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<style>
	.mdl-layout-title a:link    { color: red; text-decoration: none;}
	.mdl-layout-title a:visited { color: black; text-decoration: none;}
	.mdl-layout-title a:hover   { color: black; text-decoration: none; }

	.mdl-layout__drawer-button > .material-icons { margin-top: 10px;}
	
	
</style>
<div class="mdl-layout__drawer">
	<span class="mdl-layout-title">
		<a href="${ctx}/main/home.do">${projectName}</a>
	</span>
	<header class="demo-drawer-header">
		<img src="images/user.jpg" class="demo-avatar">
		<div class="demo-avatar-dropdown">
			<span>hello@example.com</span>
			<div class="mdl-layout-spacer"></div>
			<button id="accbtn" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
			<i class="material-icons" role="presentation">arrow_drop_down</i>
			<span class="visuallyhidden">Accounts</span>
			</button>
			<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="accbtn">
			<li class="mdl-menu__item">hello@example.com</li>
			<li class="mdl-menu__item">info@example.com</li>
			<li class="mdl-menu__item"><i class="material-icons">add</i>Add another account...</li>
			</ul>
		</div>
	</header>
	<nav class="mdl-navigation">
		<a class="mdl-navigation__link" href="${ctx}/mail/writeMail.do">
			<i class="material-icons" role="presentation">create</i>&nbsp;&nbsp;메일쓰기
		</a>
		<a class="mdl-navigation__link" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">mail</i>&nbsp;&nbsp;받은메일함
		</a>
		<a class="mdl-navigation__link closed-menu" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">send</i>&nbsp;&nbsp;보낸메일함
		</a>
		<a class="mdl-navigation__link closed-menu" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">speaker_notes</i>&nbsp;&nbsp;공지사항
		</a>
		<a class="mdl-navigation__link closed-menu" href="${ctx}/cafeteria/receiveMenu.do">
			<i class="material-icons" role="presentation">restaurant</i>&nbsp;&nbsp;주간식당메뉴
		</a>
		<a class="mdl-navigation__link closed-menu" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">phone</i>&nbsp;&nbsp;내선
		</a>
		<a class="mdl-navigation__link closed-menu" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">wb_sunny</i>&nbsp;&nbsp;날씨
		</a>
	</nav>
</div>

<script>
	$(document).ready(function(){
		$(".closed-menu").on("click", function(){
			alert("서비스 준비중입니다.");
			return false;
		})
	});
</script>