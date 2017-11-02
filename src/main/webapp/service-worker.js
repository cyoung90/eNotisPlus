var dataCacheName = 'eNotis+_Data-v1';
var cacheName = 'eNotis+_step_1_2';
// 캐시 저장소
var filesToCache = [
	'/',
	'/index.html',
	'/scripts/app.js',
	'/styles/base.css',
	'/styles/inline.css',
	'/WEB-INF/jsp/main/home.jsp'
	WEB-INF/jsp/main/home.jsp
	
];

// service-worker install evnet
self.addEventListener('install', function(e) {
	console.log('[ServiceWorker] Install');
	e.waitUntil(caches.open(cacheName).then(function(cache) {
		console.log('[ServiceWorker] Caching app shell');
		return cache.addAll(filesToCache);
	}));
});

// service-worker fetch event
// PWA에서 생성된 요청을 가로채서 서비스워커에서 처리하는 기능
self.addEventListener('fetch', function(e) {
	console.log('[ServiceWorker] Fetch', e.request.url);
	e.respondWith(caches.match(e.request).then(function(response) {
		return response || fetch(e.request);
	}));
});

// service-worker activate event (Cache update)
self.addEventListener('activate', function(e) {
  console.log('[ServiceWorker] Activate');
  e.waitUntil(
    caches.keys().then(function(keyList) {
      return Promise.all(keyList.map(function(key) {
        if (key !== cacheName && key !== dataCacheName) {
          console.log('[ServiceWorker] Removing old cache', key);
          return caches.delete(key);
        }
      }));
    })
  );
  /*
   * Fixes a corner case in which the app wasn't returning the latest data.
   * You can reproduce the corner case by commenting out the line below and
   * then doing the following steps: 1) load app for first time so that the
   * initial New York City data is shown 2) press the refresh button on the
   * app 3) go offline 4) reload the app. You expect to see the newer NYC
   * data, but you actually see the initial data. This happens because the
   * service worker is not yet activated. The code below essentially lets
   * you activate the service worker faster.
   */
  return self.clients.claim();
});
