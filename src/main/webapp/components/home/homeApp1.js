(function() {
	// ECMAScript5부터 적용되는 키워드. 쉽게말해 안전한 코딩을 위한 가이드라인
	// 안 좋은 자바스크립트 코딩패턴들을 코칭해주는 자바스크립트 문법 검사기
	// 최상위에 사용, IE10 이전 버전 미지원
	'use strict';

	var app = {
		isLoading: true,
		visibleCards: {},
		selectedCities: [],
		container: document.querySelector('.main')
	};
	
	
  document.getElementById('butRefresh').addEventListener('click', function() {
    // Refresh all of the forecasts
    app.getMethod('8300120','init1234');
  });
	  
	  
	app.getMethod = function(key, label) {
		var statement = 'select "x" as col from dual';
		var url = 'http://localhost/main/loginProcess.do?id='+key+'&pw='+label;
		
		console.log("console >>> url", key, label);
		
	    if ('caches' in window) {
	    	console.log("console >>> cache");
	        caches.match(url).then(function(response) {
	          if (response) {
	            response.json().then(function updateFromCache(json) {
	              var results = json.query.results;
	              console.log("console >>> results", results);
//	              results.key = key;
//	              results.label = label;
//	              results.created = json.query.created;
	              app.updateMethod(results);
	            });
	          }
	        });
	    }
	    
	    // Fetch the latest data.
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function() {
	    	console.log("console >>> step 1");
	      if (request.readyState === XMLHttpRequest.DONE) {
	    	  console.log("console >>> step 2");
	        if (request.status === 200) {
	        	console.log("console >>> step 3");
	        	console.log("console >>> request", request);
	          var response = JSON.parse(request.response);
	          
	          console.log("console >>> response", response.userInfo);
	          var result = response.userInfo;
	          //var results = response.query.userInfo;
	          //var a = JSON.parse(request.response.userInfo);
	          //console.log("console >>> JSON.parse(response.userInfo)", a);
//	          results.key = key;
//	          results.label = label;
//	          results.created = response.query.created;
	          app.updateForecastCard(result);
	        }
	      } else {
	        // Return the initial weather forecast since no data is available.
	    	  console.log("console >>> step 4");
	        app.updateForecastCard(null);
	      }
	    };
	    request.open('GET', url);
	    request.send();
	};
	
	  app.updateForecasts = function() {
	    var keys = Object.keys(app.visibleCards);
	    keys.forEach(function(key) {
	      app.getForecast(key);
	    });
	  };

	  app.updateForecastCard = function(data) {
		  
		  console.log(data);
		  
		  var id = data.NFUID;
		  var mail = data.MAIL;
		
		  var card = app.visibleCards[data.id];
		  
	    if (!card) {
	        card = app.cardTemplate.cloneNode(true);
	        card.removeAttribute('hidden');
	        app.container.appendChild(card);
	        app.visibleCards[data.id] = card;
	      }
		   
	    
	    alert(id);
		    
	  }
	
	  app.updateMethod = function(data) {
	    var dataLastUpdated = new Date(data.created);
	    var msg = data.msg;
	    var resultCd = data.resultCd;

	    var card = app.visibleCards[data.key];
	    if (!card) {
	      app.container.appendChild(card);
	      app.visibleCards[data.key] = card;
	    }

	    // Verifies the data provide is newer than what's already visible
	    // on the card, if it's not bail, if it is, continue and update the
	    // time saved in the card
	    var cardLastUpdatedElem = card.querySelector('.card-last-updated');
	    var cardLastUpdated = cardLastUpdatedElem.textContent;
	    if (cardLastUpdated) {
	      cardLastUpdated = new Date(cardLastUpdated);
	      // Bail if the card has more recent data then the data
	      if (dataLastUpdated.getTime() < cardLastUpdated.getTime()) {
	        return;
	      }
	    }
	    cardLastUpdatedElem.textContent = data.created;

	    card.querySelector('.description').textContent = current.text;
	    card.querySelector('.date').textContent = current.date;
	    card.querySelector('.current .icon').classList.add(app.getIconClass(current.code));
	    card.querySelector('.current .temperature .value').textContent =
	      Math.round(current.temp);
	    card.querySelector('.current .sunrise').textContent = sunrise;
	    card.querySelector('.current .sunset').textContent = sunset;
	    card.querySelector('.current .humidity').textContent =
	      Math.round(humidity) + '%';
	    card.querySelector('.current .wind .value').textContent =
	      Math.round(wind.speed);
	    card.querySelector('.current .wind .direction').textContent = wind.direction;
	    var nextDays = card.querySelectorAll('.future .oneday');
	    var today = new Date();
	    today = today.getDay();
	    for (var i = 0; i < 7; i++) {
	      var nextDay = nextDays[i];
	      var daily = data.channel.item.forecast[i];
	      if (daily && nextDay) {
	        nextDay.querySelector('.date').textContent =
	          app.daysOfWeek[(i + today) % 7];
	        nextDay.querySelector('.icon').classList.add(app.getIconClass(daily.code));
	        nextDay.querySelector('.temp-high .value').textContent =
	          Math.round(daily.high);
	        nextDay.querySelector('.temp-low .value').textContent =
	          Math.round(daily.low);
	      }
	    }
	    if (app.isLoading) {
	      app.spinner.setAttribute('hidden', true);
	      app.container.removeAttribute('hidden');
	      app.isLoading = false;
	    }
	  };
})();