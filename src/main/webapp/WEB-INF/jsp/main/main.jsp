<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- TODO add manifest here -->
  	<link rel="manifest" href="${ctx}/manifest.json"/>
	<style type="text/css">
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
<jsp:include page="../common/leftMenu.jsp"/>
  <main class="mdl-layout__content">
	<div class="page-content">
		<div class="mdl-grid">
			<div class="demo-card-wide mdl-card mdl-shadow--2dp mdl-cell mdl-cell--8-col">
			  <div class="mdl-card__title">
			    <h2 class="mdl-card__title-text">Welcome</h2>
			  </div>
			  <div class="mdl-card__supporting-text">
			    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
			    Mauris sagittis pellentesque lacus eleifend lacinia...
			  </div>
			  <div class="mdl-card__actions mdl-card--border">
			    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
			      Get Started
			    </a>
			  </div>
			  <div class="mdl-card__menu">
			    <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
			      <i class="material-icons">share</i>
			    </button>
			  </div>
			</div>
			<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col">
			  <div class="mdl-card__title mdl-card--expand" id="card1">
			    <h2 class="mdl-card__title-text">메일</h2>
			  </div>
			</div>
			<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col">
			  <div class="mdl-card__title mdl-card--expand card2">
			  </div>
			  <div class="mdl-card__actions mdl-card--border mdl-js-button mdl-js-ripple-effect">
			  	<h2 class="mdl-card__title-text" style="width:100%; float:left; clear:both;">공지사항</h2>
			  </div>
			</div>
		</div>
	</div>
  </main>
</div>
<!-- 본문 끝 -->
<jsp:include page="/WEB-INF/include/include-body.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("onLine Check : " + navigator.onLine);
		
			
		})
	</script>
</body>
</html>