(function() {
	// ECMAScript5부터 적용되는 키워드. 쉽게말해 안전한 코딩을 위한 가이드라인
	// 안 좋은 자바스크립트 코딩패턴들을 코칭해주는 자바스크립트 문법 검사기
	// 최상위에 사용, IE10 이전 버전 미지원
	'use strict';

	var app = {
//		isLoading: true,
//		visibleCards: {},
//		selectedCities: [],
//		spinner: document.querySelector('.loader'),
//		cardTemplate: document.querySelector('.cardTemplate'),
//		container: document.querySelector('.main'),
//		addDialog: document.querySelector('.dialog-container'),
		autoLogin: false,
		user: {"id":"32089829","mail":"chayoung_choi@daekyo.co.kr"},
		daysOfWeek: ['월', '화', '수', '목', '금', '토', '일']
	};


/*******************************************************************************
 * 
 * Event listeners for UI elements
 * 
 ******************************************************************************/
	$(document).ready(function(){
		app.user = localStorage.user;
		if (app.user) {
			app.user = JSON.parse(app.user);
		}
		console.log("asdfasdfasdfasdf");
	});
	

	
	
	
	
	
	


/*******************************************************************************
 * 
 * Methods to update/refresh the UI
 * 
 ******************************************************************************/
	app.saveUserInfo = function(data) {
		
	}

/*******************************************************************************
 * 
 * Methods for dealing with the model
 * 
 ******************************************************************************/
	// 로그인
	app.loginProcess = function(id, pw) {
		
		var host = window.location.host;
		
		var url = 'http://' + host + '/main/loginProcess.do?id=' + id + '&pw=' + pw;
		
		if ( 'caches' in window ) {
			caches.match(url).then(function(response) {
				if (response) {
					response.json().then(function updateFromCache(json) {
						var results = json;
						var msg = results.msg;
						var resultCd = results.resultCd;
						
						console.log(results);
						if (resultCd == "200") {
							var userInfo = results.userInfo;
							app.saveUserInfo(userInfo);
							localStorage.loginInit = "init";
							app.moveComponent("/components/home/home.jsp");
						}
						
						console.log("caches");
					});
				}
			});
		}
		// Fetch the latest data.
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState === XMLHttpRequest.DONE) {
				if (request.status === 200) {
					var response = JSON.parse(request.response);
					
					var results = response;
					var msg = results.msg;
					var resultCd = results.resultCd;
					
					if (resultCd == "200") {
						var userInfo = results.userInfo;
						app.saveUserInfo(userInfo);
						localStorage.loginInit = "init";
						app.moveComponent("/components/home/home.jsp");
					} else {
						alert(msg);
					}
					
					console.log("XMLHttpRequest");
				}
			} else {
				// Return the initial weather forecast since no data is available.
				//app.updateForecastCard(initialWeatherForecast);
			}
		};
//		var comSubmit = new ComSubmit();
//		comSubmit.addParam("id", $("#id").val());
//		comSubmit.addParam("pw", $("#pw").val());
//		
//		var formData = $("#commonForm").serialize();
//		console.log(formData);
		
		request.open('GET', url);
		request.send();
//		request.open('POST', 'http://' + host + '/main/loginProcess.do');
//		request.send(formData);
	};
	
	app.updateForecasts = function() {
		var keys = Object.keys(app.visibleCards);
			keys.forEach(function(key) {
			app.getForecast(key);
		});
	};

	var initUser = {
			NFUID: '8300120',
			NAME: '최차영',
			MAIL: 'chayoung_choi@daekyo.co.kr',
			LAST_LOGIN_DT: '20171107180000'
	}

	// 화면 이동
	app.moveComponent = function(url){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl(url);
		comSubmit.submit();
	}
/*******************************************************************************
 * 
 * Code required to start the app
 * 
 * NOTE: To simplify this codelab, we've used localStorage. localStorage is a
 * synchronous API and has serious performance implications. It should not be
 * used in production applications! Instead, check out IDB
 * (https://www.npmjs.com/package/idb) or SimpleDB
 * (https://gist.github.com/inexorabletash/c8069c042b734519680c)
 ******************************************************************************/
	app.user = localStorage.user;
	app.autoLogin = localStorage.autoLogin;
	if (app.user) {
	    app.user = JSON.parse(app.user);
	} else {
		
	}

})();
