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
		<a href="${ctx}/main/login.do">${projectName}</a>
	</span>
	<nav class="mdl-navigation">
		<a class="mdl-navigation__link" href="${ctx}/mail/viewDetail.do">
			<i class="material-icons" role="presentation">create</i> 메일쓰기
		</a>
		<a class="mdl-navigation__link" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">mail</i> 받은메일함
		</a>
		<a class="mdl-navigation__link" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">send</i> 보낸메일함
		</a>
		<a class="mdl-navigation__link" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">note</i> 공지사항
		</a>
		<a class="mdl-navigation__link" href="${ctx}/cafeteria/receiveMenu.do">
			<i class="material-icons" role="presentation">restaurant</i> 주간식당메뉴
		</a>
		<a class="mdl-navigation__link" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation">phone</i> 내선
		</a>
		<a class="mdl-navigation__link" href="${ctx}/mail/receiveList.do">
			<i class="material-icons" role="presentation"></i> 날씨
		</a>
	</nav>
</div>