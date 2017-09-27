<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>${titleName}</title>
	
	<!-- user setting -->
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.blue-light_blue.min.css" /><!-- 전체 테마 컬러 -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!-- 미터리얼 아이콘 -->
	
	<style>
	.demo-layout-waterfall .mdl-layout__header-row .mdl-navigation__link:last-of-type  {
	  padding-right: 0;
	}
	.demo-card-wide.mdl-card {
	  width: 512px;
	  align-content: center;
	}
	.demo-card-wide > .mdl-card__title {
	  color: #fff;
	  height: 176px;
	  background: url('../images/home/rice.png') center / cover;
	  width: calc(100% - 16px);
	}
	.demo-card-wide > .mdl-card__menu {
	  color: #fff;
	}
	.demo-card-square.mdl-card {
	  width: 320px;
	  height: 320px;
	}
	.demo-card-square > .mdl-card__title {
	  color: #fff;
	  background:
	    url('../images/home/a.jpg') bottom right 15% no-repeat #46B6AC;
	}
	.demo-card-square > .mdl-card__title.card2 {
	  color: #fff;
	  background:
	    url('../images/home/b.jpg') bottom right 15% no-repeat #46B6AC;
	}
.demo-card-image.mdl-card {
  width: 256px;
  height: 256px;
  background: url('../assets/demos/image_card.jpg') center / cover;
}
.demo-card-image > .mdl-card__actions {
  height: 52px;
  padding: 16px;
  background: rgba(0, 0, 0, 0.2);
}
.demo-card-image__filename {
  color: #fff;
  font-size: 14px;
  font-weight: 500;
}
	.page-content {
	  
	}
	.mdl-layout__drawer-button > .material-icons { margin-top: 10px;}
	</style>
</head>
<body>

<!-- The drawer is always open in large screens. The header is always shown, even in small screens. -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
    <span class="mdl-layout-title">Home</span>
      <div class="mdl-layout-spacer"></div>
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right">
        <label class="mdl-button mdl-js-button mdl-button--icon" for="fixed-header-drawer-exp">
          <i class="material-icons">search</i>
        </label>
        <div class="mdl-textfield__expandable-holder">
          <input class="mdl-textfield__input" type="text" name="sample" id="fixed-header-drawer-exp">
        </div>
      </div>
    </div>
  </header>
<jsp:include page="../../include/leftMenu.jsp"/>
  <main class="mdl-layout__content">
	<div class="page-content">
		<div class="mdl-grid">
			<div class="demo-card-image mdl-card mdl-shadow--8dp">
			  <div class="mdl-card__title mdl-card--expand"></div>
			</div>
			<div class="demo-card-image mdl-card mdl-shadow--8dp">
			  <div class="mdl-card__title mdl-card--expand"></div>
			</div>
			<div class="demo-card-image mdl-card mdl-shadow--8dp">
			  <div class="mdl-card__title mdl-card--expand"></div>
			</div>
		</div>
	</div>
  </main>
</div>
<!-- 본문 끝 -->
	<script>
		$(document).ready(function(){

			console.log(navigator.onLine);
		})
	</script>
</body>
</html>