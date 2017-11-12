<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<style>
	.mdl-layout-title a:link    { color: red; text-decoration: none;}
	.mdl-layout-title a:visited { color: black; text-decoration: none;}
	.mdl-layout-title a:hover   { color: black; text-decoration: none; }

	.mdl-layout__drawer-button > .material-icons { margin-top: 10px;}
	
	/* user 프로필 */
	.demo-avatar {
	  width: 60px;
	  height: 60px;
	  border-radius: 30px;
	}
	/* user 프로필 */
	.demo-drawer-header {
	  box-sizing: border-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	  -webkit-flex-direction: column;
	      -ms-flex-direction: column;
	          flex-direction: column;
	  -webkit-justify-content: flex-end;
	      -ms-flex-pack: end;
	          justify-content: flex-end;
	  padding: 16px 16px 0 16px;
	  height: 151px;
	}
	/* user 프로필 */
	.demo-avatar-dropdown {
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	  position: relative;
	  -webkit-flex-direction: row;
	      -ms-flex-direction: row;
	          flex-direction: row;
	  -webkit-align-items: center;
	      -ms-flex-align: center;
	          align-items: center;
	  width: 100%;
	}
	ul { list-style:none; padding-left:0px; }
	
</style>
<div class="mdl-layout__drawer">
	<header class="demo-drawer-header mdl-color--blue-grey-100"> <!-- mdl-color--blue-grey-900 mdl-color-text--blue-grey-50 -->
		<span class="mdl-layout-title">
			<a href="${ctx}/components/home/home.jsp"><%-- ${projectName}<br> --%>
				<img src="${ctx}/images/user.jpg" class="demo-avatar">
			</a>
		</span>
		<div class="demo-avatar-dropdown">
			<ul>
				<li>최차영</li>
				<li>hello@example.com</li>
			</ul>
			<div class="mdl-layout-spacer"></div>
			<button class="mdl-button show-modal mdl-js-button mdl-js-ripple-effect mdl-button--icon">
				<i class="material-icons" role="presentation">lock</i>
			</button>
<!-- 			<button tyid="logout" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
				<i class="material-icons" role="presentation">lock</i>
				<span class="visuallyhidden">logout</span>
			</button> -->
<!-- 			<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="accbtn">
				<li class="mdl-menu__item">hello@example.com</li>
				<li class="mdl-menu__item">info@example.com</li>
				<li class="mdl-menu__item"><i class="material-icons">add</i>Add another account...</li>
			</ul> -->
		</div>
	</header>
	<nav class="mdl-navigation "><!-- mdl-color--blue-grey-800 hAuto -->
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
		<div class="mdl-layout-spacer"></div>
		<a class="mdl-navigation__link" href=""><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">help_outline</i><span class="visuallyhidden">Help</span></a>
	</nav>
</div>
	  
	  <dialog class="mdl-dialog">
	    <div class="mdl-dialog__content">
	      <p>로그아웃 하시겠습니까?</p>
	    </div>
	    <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
	      <button type="button" id="btn_logout" class="mdl-button">로그아웃</button>
	      <button type="button" class="mdl-button close">취소</button>
	    </div>
	  </dialog>

<script>
	$(document).ready(function(){
		$(".closed-menu").on("click", function(){
			alert("서비스 준비중입니다.");
			return false;
		})
		
		var dialog = document.querySelector('dialog');
	    var showModalButton = document.querySelector('.show-modal');
	    if (!dialog.showModal) {
			dialogPolyfill.registerDialog(dialog);
	    }
	    showModalButton.addEventListener('click', function() {
			dialog.showModal();
	    });
	    dialog.querySelector('.close').addEventListener('click', function() {
			dialog.close();
	    });
	    dialog.querySelector('#btn_logout').addEventListener('click', function() {
	    	logoutProcess();
	    });
		
	});
	
	// 로그아웃, 로컬저장소 초기화
	function logoutProcess(){
		localStorage.clear();
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/");
		comSubmit.submit();
	}
</script>