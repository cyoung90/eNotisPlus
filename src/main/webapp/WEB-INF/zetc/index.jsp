<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="canonical" href="https://weather-pwa-sample.firebaseapp.com/final/">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Weather PWA</title>
  <link rel="stylesheet" type="text/css" href="${ctx}/styles/inline.css">

  <!-- TODO add manifest here -->
  <link rel="manifest" href="manifest.json">
  <!-- Add to home screen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Weather PWA">
  <link rel="apple-touch-icon" href="${ctx}/images/icons/icon-152x152.png">
  <meta name="msapplication-TileImage" content="${ctx}/images/icons/icon-144x144.png">
  <meta name="msapplication-TileColor" content="#2F3BA2">
  
  <script language='javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js'></script>
  <script type="text/javascript" charset="utf-8" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
</head>
<body>

  <header class="header">
    <h1 class="header__title" onclick="getMail()">Weather PWA</h1>
    <button id="butRefresh" class="headerButton" aria-label="Refresh"></button>
    <button id="butAdd" class="headerButton" aria-label="Add"></button>
  </header>

  <main class="main">
  <div>
  	<input id="mail" type="button" value="get mail" onclick="getMail()"/>
  </div>
    <div class="card cardTemplate weather-forecast" hidden="hidden">
      <div class="city-key" hidden="hidden"></div>
      <div class="card-last-updated" hidden="hidden"></div>
      <div class="location"></div>
      <div class="date"></div>
      <div class="description"></div>
      <div class="current">
        <div class="visual">
          <div class="icon"></div>
          <div class="temperature">
            <span class="value"></span><span class="scale">&#176;</span>
          </div>
        </div>
        <div class="description">
          <div class="humidity"></div>
          <div class="wind">
            <span class="value"></span>
            <span class="scale">mph</span>
            <span class="direction"></span>&#176;
          </div>
          <div class="sunrise"></div>
          <div class="sunset"></div>
        </div>
      </div>
      <div class="future">
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
        <div class="oneday">
          <div class="date"></div>
          <div class="icon"></div>
          <div class="temp-high">
            <span class="value"></span>&#176;
          </div>
          <div class="temp-low">
            <span class="value"></span>&#176;
          </div>
        </div>
      </div>
    </div>
  </main>

  <div class="dialog-container">
    <div class="dialog">
      <div class="dialog-title">도시 추가</div>
      <div class="dialog-body">
        <select id="selectCityToAdd">
          <!-- Values map to Yahoo Weather API Where On Earth Identifiers (WOEIDs).
               https://developer.yahoo.com/weather/documentation.html#req -->
          <option value="2357536">Austin, TX</option>
          <option value="2367105">Boston, MA</option>
          <option value="2379574">Chicago, IL</option>
          <option value="2459115">New York, NY</option>
          <option value="2475687">Portland, OR</option>
          <option value="2487956">San Francisco, CA</option>
          <option value="2490383">Seattle, WA</option>
          <option value="1132599">Seoul, KR</option>
        </select>
      </div>
      <div class="dialog-buttons">
        <button id="butAddCity" class="button">Add</button>
        <button id="butAddCancel" class="button">Cancel</button>
      </div>
    </div>
  </div>

  <div class="loader">
    <svg viewBox="0 0 32 32" width="32" height="32">
      <circle id="spinner" cx="16" cy="16" r="14" fill="none"></circle>
    </svg>
  </div>

  <!-- Uncomment the line below when ready to test with fake data -->
  <script src="${ctx}/scripts/app.js" async></script>
  <script src="${ctx}/scripts/index.js" async></script>

 <script type="text/javascript">

</script>
</body>
</html>