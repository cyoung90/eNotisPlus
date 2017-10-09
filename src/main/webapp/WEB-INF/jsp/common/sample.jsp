<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
<!-- 본문 시작 -->
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
<jsp:include page="../../include/leftMenu.jsp"/>
	<main class="mdl-layout__content">
		<div class="page-content">

		</div>
	</main>
</div>
<!-- 본문 끝 -->
<jsp:include page="../../include/include-body.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("onLine Check : " + navigator.onLine);
		})
	</script>
</body>
</html>