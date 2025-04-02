'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "890e01fc5601772bbc37fa1697bbf654",
"assets/AssetManifest.bin.json": "9b8eea5449446e9b80c3a32092480abb",
"assets/AssetManifest.json": "c6cf2ee2a9a717fb63741c2dfcaba71c",
"assets/assets/animations/141397-loading-juggle.json": "18cd80a46915ce96176088f6de32cc17",
"assets/assets/animations/address404.json": "10f2a43cfd8f642c7c35e50ac1c9aab9",
"assets/assets/animations/animated-rain-icon.svg": "dae93c901051e9f0b666bdd7cf3c45d5",
"assets/assets/animations/animated-sun.svg": "816e6deefdbb251eaf8989d503fb533a",
"assets/assets/animations/docer.json": "0447d6592aa7c62f7464b5a867a18bf7",
"assets/assets/animations/loading-ani.gif": "3bf103c630b2d67b07d677bd70be8eb9",
"assets/assets/animations/output-onlinegiftools.gif": "2854abed1f98eae6cb9e3d0f8ad36df0",
"assets/assets/animations/purple-theme.json": "9b153ed20c0e4ede7fd2520258fc9f21",
"assets/assets/fonts/Exo2-Bold.ttf": "010d5b585e17cc916d8c09793edac1c5",
"assets/assets/fonts/Exo2-Medium.ttf": "3773afc058be1a1efca510f9168a3c2a",
"assets/assets/fonts/Exo2-Regular.ttf": "e05978f93ce35d38eed7bf1a002b342c",
"assets/assets/fonts/LilitaOne-Regular.ttf": "ce83b4bfa37f53ea2a3fc97088af7181",
"assets/assets/icons/01d.png": "e2d1e3b246bb8944d91b4a0924a411b3",
"assets/assets/icons/02d.png": "dae8743c9cb42f6551a702a4deb1f4e2",
"assets/assets/icons/03d.png": "dae8743c9cb42f6551a702a4deb1f4e2",
"assets/assets/icons/04d.png": "f50de5bd0873f6c0039082cd8d23d8f0",
"assets/assets/icons/09d.png": "d3e4f7c95c92b64d5d0e2d16ad965caf",
"assets/assets/icons/10d.png": "9288ea61fa4617253a5a932009585222",
"assets/assets/icons/11d.png": "06e2d76be0317f1b72a274b318faa463",
"assets/assets/icons/13d.png": "f50de5bd0873f6c0039082cd8d23d8f0",
"assets/assets/icons/39.png": "23eb3f6b50e223d12e6e9ed48e0f97f6",
"assets/assets/icons/50d.png": "e3eac4d8e499a46cc0a69a8e17e3eff2",
"assets/assets/icons/6.png": "1df4e3bf4e6f97e7d2de33284192d1e9",
"assets/assets/icons/7.png": "3b470f335db86248682dd113cefa5f24",
"assets/assets/images/forecast-max.png": "86e9551ae61909c27b282d469a180ef6",
"assets/assets/images/forecast.png": "ecdcb55d8d350ce3ebbdcfdcf5bfb837",
"assets/assets/images/pattern.png": "4fa9b36a242a8bb0da2ce37fcf517192",
"assets/assets/images/pattern2.png": "96a05326e060b88a8ad220070f03d40e",
"assets/assets/images/pattern3.png": "8c49cdd3bc0c36ce6ef1e436be321944",
"assets/FontManifest.json": "5b8d260009c2ba7ada1bce2cfab9b2ce",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "5c0e08b316511f7aa68996c1b1716dc7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b93248a553f9e8bc17f1065929d5934b",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/iconsax/lib/assets/fonts/iconsax.ttf": "071d77779414a409552e0584dcbfd03d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "b7494490812ea0b4c2cbb3969019be96",
"canvaskit/canvaskit.wasm": "1febcf3fdbbfb632728ab3902c386b44",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "9961e966e98a802d73942d48b15b86e7",
"canvaskit/chromium/canvaskit.wasm": "407d7dd73b05e38e5cafa7b789e22feb",
"canvaskit/skwasm.js": "ede049bc1ed3a36d9fff776ee552e414",
"canvaskit/skwasm.js.symbols": "6c749208f75e81d9628fa894d73bfbdc",
"canvaskit/skwasm.wasm": "a2021418f5cb63318cbe273e2e75f877",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f89db28227ec48576c4247890b4446f8",
"flutter_bootstrap.js": "7e3adf769b28ed32131706fcd9b6dcff",
"icons/appstore.png": "d05e6b237be31a0d9c929df47292048e",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/img.png": "f4fae00f26227f91fe7abc7ab07f8ac4",
"img.png": "f4fae00f26227f91fe7abc7ab07f8ac4",
"img_1.png": "b3e272a48132e0a467817ca20ef34a02",
"index.html": "f8f7051d0fd478a1aa28b55c3031580b",
"/": "f8f7051d0fd478a1aa28b55c3031580b",
"main.dart.js": "26b924a501592c0a4ffb9d3c8c2d1b91",
"manifest.json": "786b2c3e19290ecbe9db4db7eac0e182",
"version.json": "23e9d24d5b36279cbfede1d4ebb467c0"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
