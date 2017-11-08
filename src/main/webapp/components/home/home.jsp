<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
/* 		.demo-layout-waterfall .mdl-layout__header-row .mdl-navigation__link:last-of-type  {
		  padding-right: 0;
		} */
/* 		.demo-card-wide.mdl-card {
		  width: 512px;
		  align-content: center;
		} */
		.demo-card-wide > .mdl-card__title {
		  color: #fff;
		  /* height: 176px; */
		  background: url('../images/home/rice.png') center / cover;
		  /* width: calc(100% - 16px); */
		}
		.demo-card-wide > .mdl-card__menu {
		  color: #fff;
		}
/* 		.demo-card-square.mdl-card {
		  width: 320px;
		  height: 320px;
		} */
		.demo-card-square > .mdl-card__title.card {
		  color: #fff;
		  width: 800px;
		  background:
		    url('../images/home/a.jpg') bottom right 15% no-repeat #46B6AC;
		}
		.demo-card-square > .mdl-card__title.card2 {
		  color: #fff;
		  background:
		    url('../images/home/b.jpg') bottom right 15% no-repeat #46B6AC;
		}
		.mdl-layout__drawer-button > .material-icons { margin-top: 10px;}
		
		.page-content a { min-height:100px; }
		table {text-align: center; margin:auto;}
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
  <main class="mdl-layout__content">
	<div class="page-content">
		<table class="w100">
			<tr>
				<td>
					<a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">
						<div class="">
							<div class="">
								<i class="material-icons" role="presentation">restaurant</i>
							</div>
							<div class="">
								주간식당메뉴
							</div>
						</div>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">
						<div class="">
							<div class="">
								<i class="material-icons" role="presentation">mail</i>
							</div>
							<div class="">
								메일
							</div>
						</div>
					</a>
				</td>
				<td>
					<a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">
						<div class="">
							<div class="">
								<i class="material-icons" role="presentation">speaker_notes</i>
							</div>
							<div class="">
								공지사항
							</div>
						</div>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">
						<div class="">
							<div class="">
								<i class="material-icons" role="presentation">phone</i>
							</div>
							<div class="">
								내선
							</div>
						</div>
					</a>
				</td>
				<td>
					<a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">
						<div class="">
							<div class="">
								<i class="material-icons" role="presentation">wb_sunny</i>
							</div>
							<div class="">
								날씨
							</div>
						</div>
					</a>
				</td>
			</tr>
		</table>
		
		
		<div class="mdl-grid">
			<div class="mdl-grid demo-content">
          <div class="demo-cards mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-grid mdl-grid--no-spacing">
            <div class="demo-updates mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--12-col-desktop">
              <div class="mdl-card__title mdl-card--expand mdl-color--teal-300">
                <h2 class="mdl-card__title-text">Updates</h2>
              </div>
              <div class="mdl-card__supporting-text mdl-color-text--grey-600">
                Non dolore elit adipisicing ea reprehenderit consectetur culpa.
              </div>
              <div class="mdl-card__actions mdl-card--border">
                <a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Read More</a>
              </div>
            </div>
            <div class="demo-separator mdl-cell--1-col"></div>
            <div class="demo-options mdl-card mdl-color--deep-purple-500 mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--3-col-tablet mdl-cell--12-col-desktop">
              <div class="mdl-card__supporting-text mdl-color-text--blue-grey-50">
                <h3>View options</h3>
                <ul>
                  <li>
                    <label for="chkbox1" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                      <input type="checkbox" id="chkbox1" class="mdl-checkbox__input">
                      <span class="mdl-checkbox__label">Click per object</span>
                    </label>
                  </li>
                  <li>
                    <label for="chkbox2" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                      <input type="checkbox" id="chkbox2" class="mdl-checkbox__input">
                      <span class="mdl-checkbox__label">Views per object</span>
                    </label>
                  </li>
                  <li>
                    <label for="chkbox3" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                      <input type="checkbox" id="chkbox3" class="mdl-checkbox__input">
                      <span class="mdl-checkbox__label">Objects selected</span>
                    </label>
                  </li>
                  <li>
                    <label for="chkbox4" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                      <input type="checkbox" id="chkbox4" class="mdl-checkbox__input">
                      <span class="mdl-checkbox__label">Objects viewed</span>
                    </label>
                  </li>
                </ul>
              </div>
              <div class="mdl-card__actions mdl-card--border">
                <a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--blue-grey-50">Change location</a>
                <div class="mdl-layout-spacer"></div>
                <i class="material-icons">location_on</i>
              </div>
            </div>
          </div>
        </div>
			<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col">
				<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col">
					<div class="mdl-card__title mdl-card--expand card2">
					</div>
					<div class="mdl-card__actions mdl-card--border mdl-js-button mdl-js-ripple-effect">
						<h2 class="mdl-card__title-text w100" style="float:left; clear:both;">주간식당메뉴</h2>
					</div>
				</div>
				<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--6-col">
					<div class="mdl-card__title mdl-card--expand card2">
					</div>
					<div class="mdl-card__actions mdl-card--border mdl-js-button mdl-js-ripple-effect">
						<h2 class="mdl-card__title-text w100" style="float:left; clear:both;">주간식당메뉴</h2>
					</div>
				</div>
				<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--6-col">
					<div class="mdl-card__title mdl-card--expand card2">
					</div>
					<div class="mdl-card__actions mdl-card--border mdl-js-button mdl-js-ripple-effect">
						<h2 class="mdl-card__title-text w100" style="float:left; clear:both;">주간식당메뉴</h2>
					</div>
				</div>
			
			</div>
<div class="demo-cards mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-grid mdl-grid--no-spacing">
            <div class="demo-updates mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--12-col-desktop">
              <div class="mdl-card__title mdl-card--expand mdl-color--teal-300">
                <h2 class="mdl-card__title-text">Updates</h2>
              </div>
              <div class="mdl-card__supporting-text mdl-color-text--grey-600">
                Non dolore elit adipisicing ea reprehenderit consectetur culpa.
              </div>
              <div class="mdl-card__actions mdl-card--border">
                <a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Read More</a>
              </div>
            </div>
<!-- 			<div class="demo-card-wide mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col">
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
			<div class="demo-card-square mdl-card mdl-shadow--2dp mdl-cell mdl-cell--6-col">
			  <div class="mdl-card__title mdl-card--expand" id="card1">
			    <h2 class="mdl-card__title-text">메일</h2>
			  </div>
			</div> -->
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
	</script>
</body>
	<script src="homeApp.js" async></script>
</html>