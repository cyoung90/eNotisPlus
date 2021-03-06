<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
		.mdl-card {text-align: center; height:120%}
		.mdl-card__title   {width:100%; height: 60%}
		.mdl-card__title p {text-align:center; width:100%}
		.main-btn1>.mdl-card__title {background-color: #E74C3C;}
		.main-btn2>.mdl-card__title {background-color: #32B2DF;}
		.main-btn3>.mdl-card__title {background-color: #9B59B6;}
		.main-btn4>.mdl-card__title {background-color: #34495E;}
		.main-btn5>.mdl-card__title {background-color: #F1C40F;}
		.mdl-card--border {padding-top: 0}
	</style>
</head>
<body>

<!-- 본문 시작 -->
<!-- The drawer is always open in large screens. The header is always shown, even in small screens. -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
    <span class="mdl-layout-title">Home</span>
      <div class="mdl-layout-spacer"></div>
<!--       <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right">
        <label class="mdl-button mdl-js-button mdl-button--icon" for="fixed-header-drawer-exp">
          <i class="material-icons">search</i>
        </label>
        <div class="mdl-textfield__expandable-holder">
          <input class="mdl-textfield__input" type="text" name="sample" id="fixed-header-drawer-exp">
        </div>
      </div> -->
    </div>
  </header>
<jsp:include page="../../include/leftMenu.jsp"/>
  <main class="mdl-layout__content mdl-color--grey-100">
  	<div class="mdl-grid demo-content">
  	
		<div class="mdl-card main-card mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid
					mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect main-btn1">
			<div class="mdl-card__title">
				<p>
					<img src="../../images/menu/restaurant.png" class="demo-avatar">
				</p>
			</div>
			<div class="mdl-card__actions mdl-card--border">
					<h4>주간식당메뉴</h4>
			</div>
		</div>

		<div class="mdl-card mdl-color--white mdl-shadow--2dp mdl-cell mdl-grid mdl-cell--12-col-tablet mdl-cell--6-col-desktop
					mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect main-btn2">
			<div class="mdl-card__title mdl-card--expand">
				<p>
					<img src="../../images/menu/mail.png" class="demo-avatar">
				</p>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<h4>메일</h4>
			</div>
		</div>

		<div class="mdl-card mdl-color--white mdl-shadow--2dp mdl-cell mdl-grid mdl-cell--12-col-tablet mdl-cell--6-col-desktop
					mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect main-btn3">
			<div class="mdl-card__title mdl-card--expand">
				<p>
					<img src="../../images/menu/speaker_notes.png" class="demo-avatar">
				</p>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<h4>공지사항</h4>
			</div>
		</div>
		<div class="mdl-card mdl-color--white mdl-shadow--2dp mdl-cell mdl-grid mdl-cell--12-col-tablet mdl-cell--6-col-desktop
					mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect main-btn4">
			<div class="mdl-card__title mdl-card--expand">
				<p>
					<img src="../../images/menu/phone.png" class="demo-avatar">
				</p>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<h4>내선</h4>
			</div>
		</div>
		<div class="mdl-card mdl-color--white mdl-shadow--2dp mdl-cell mdl-grid mdl-cell--12-col-tablet mdl-cell--6-col-desktop
					mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect main-btn5">
			<div class="mdl-card__title mdl-card--expand">
				<p>
					<img src="../../images/menu/wb_sunny.png" class="demo-avatar">
				</p>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<h4>날씨</h4>
			</div>
		</div>
  
  
	</div>
  </main>


  
	<!-- 로그인 토스트 액션 -->
	<input id="demo-show-toast" class="mdl-button mdl-js-button mdl-button--raised" type="hidden"/>
	<div id="demo-toast-login" class="mdl-js-snackbar mdl-snackbar">
		<div class="mdl-snackbar__text"></div>
		<button class="mdl-snackbar__action" type="button"></button>
	</div>
</div>
<!-- 본문 끝 -->
<jsp:include page="../../include/include-body.jsp"/>
	<script type="text/javascript">

		var loginCd = localStorage.loginInit;
		
		$(document).ready(function(){

		});
		
		$(window).load(function(){
			
			if ( !gfn_isNull(loginCd) ) {
				$("#demo-show-toast").click();
			}
		});

		// 로그인 토스트 액션
		(function() {
			'use strict';
			var snackbarContainer = document.querySelector('#demo-toast-login');
			var showToastButton = document.querySelector('#demo-show-toast');
			
			var user = JSON.parse( localStorage.user );
			
			showToastButton.addEventListener('click', function() {
				'use strict';
				
				var toastMsg = user.NAME + "님 환영합니다. "
				var network = ( navigator.onLine ? '온라인' : '오프라인' );
				switch (loginCd){
					case "init" :
						toastMsg += network + " 로그인";
						break;
					case "auto" :
						toastMsg += "자동로그인";
						break;
				}
				
				var data = { message: toastMsg };
				snackbarContainer.MaterialSnackbar.showSnackbar(data);
				localStorage.removeItem('loginInit');
			});
			

		}());
		
		if ('serviceWorker' in navigator) {
			navigator.serviceWorker
					 .register('../../service-worker.js')
					 .then(function(registration) { 
						 	console.log('ServiceWorker registration successful with scope:',  registration.scope);
					 }).catch(function(error) {
							console.log('ServiceWorker registration failed:', error);
					 });
		}
		
	</script>
</body>
</html>