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
		
		user: {"id":"32089829","mail":"chayoung_choi@daekyo.co.kr"},
		daysOfWeek: ['월', '화', '수', '목', '금', '토', '일']
	};


/*******************************************************************************
 * 
 * Event listeners for UI elements
 * 
 ******************************************************************************/
	
	document.getElementById('btn_login').addEventListener('click', function() {
		app.loginProcess();
		
	    var select = document.getElementById('selectCityToAdd');
	    var selected = select.options[select.selectedIndex];
	    var key = selected.value;
	    var label = selected.textContent;
	    if (!app.selectedCities) {
	      app.selectedCities = [];
	    }
	    app.getForecast(key, label);
	    app.selectedCities.push({key: key, label: label});
	    app.saveSelectedCities();
	    app.toggleAddDialog(false);
	    
	});
	
	
	
	
	
	


/*******************************************************************************
 * 
 * Methods to update/refresh the UI
 * 
 ******************************************************************************/


/*******************************************************************************
 * 
 * Methods for dealing with the model
 * 
 ******************************************************************************/
	app.updateForecasts = function() {
		var keys = Object.keys(app.visibleCards);
			keys.forEach(function(key) {
			app.getForecast(key);
		});
	};



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
	if (app.user) {
	    app.user = JSON.parse(app.user);
	    app.user.forEach(function(city) {
	    	app.getForecast(city.key, city.label);
	    });
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
