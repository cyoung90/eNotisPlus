(function() {
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
		if ( app.autoLogin && app.user.ID ){
			app.moveComponent("/components/home/home.jsp");
		}
	});
	
	document.getElementById('btn_login').addEventListener('click', function() {
		//app.loginProcess();
		
		// test 사번
		if ( $("#id").val() == 'e' ) {
			$("#id").val("8300120");
			$("#pw").val("init1234");
		}
		
		var id = document.getElementById('id').value;
		var pw = document.getElementById('pw').value;
		
		
		app.loginProcess(id, pw);
		
//	    var select = document.getElementById('selectCityToAdd');
//	    var selected = select.options[select.selectedIndex];
//	    var key = selected.value;
//	    var label = selected.textContent;
//	    if (!app.selectedCities) {
//	      app.selectedCities = [];
//	    }
//	    app.getForecast(key, label);
//	    app.selectedCities.push({key: key, label: label});
//	    app.saveSelectedCities();
//	    app.toggleAddDialog(false);
	    
		console.log( app.user.ID );
		if ( app.user.ID ){
			alert("로그인");
		}
	});
	
	
	
	
	
	


/*******************************************************************************
 * 
 * Methods to update/refresh the UI
 * 
 ******************************************************************************/
	app.saveUserInfo = function(data) {
		
		var lastUpdateDt = new Date();
		data.lastUpdateDt = lastUpdateDt;
		
		var user = JSON.stringify(data);
	    localStorage.user = user;	// 로컬에 저장
	    localStorage.autoLogin = $("#chk_autoLogin").val();
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
						
						if (resultCd == "200") {
							var userInfo = results.userInfo;
							app.saveUserInfo(userInfo);
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
			id: '8300120',
			name: '최차영',
			mail: 'chayoung_choi@daekyo.co.kr',
			lastUpdateDt: '20171107180000'
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

	// TODO add service worker code here
	if ('serviceWorker' in navigator) {
		navigator.serviceWorker
				 .register('./service-worker.js')
				 .then(function(registration) { 
					 	console.log('ServiceWorker registration successful with scope:',  registration.scope);
				 }).catch(function(error) {
						console.log('ServiceWorker registration failed:', error);
				 });
	}
})();
