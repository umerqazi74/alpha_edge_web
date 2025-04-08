'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9c394ec438fd98db3c624315c8e9b53a",
"assets/AssetManifest.bin.json": "9dfeb9b9a626c7869c0712460b4db483",
"assets/AssetManifest.json": "02fadceca56f795b1c60fd0a5ac3eb27",
"assets/assets/web_icons/add.svg": "790767c2bcc0bedbf2f048cbc5abeb3f",
"assets/assets/web_icons/add1.svg": "f358089a72b5f8756d4a22650ed42827",
"assets/assets/web_icons/alert.png": "763205d1b963ea2ef78890f7010ed1ef",
"assets/assets/web_icons/alert.svg": "1817aa2e9b809a0838f0300150dc4b67",
"assets/assets/web_icons/attachment.svg": "d6936cfbce23c5d3616eac4cd1dda5ff",
"assets/assets/web_icons/bell.png": "654fe3d397c2359dbf9dadd93891de3c",
"assets/assets/web_icons/block.svg": "8c9a6c4b8f926513086e778b31d37884",
"assets/assets/web_icons/coin.png": "42bbec989123b91214a1342801d66221",
"assets/assets/web_icons/coment.svg": "9b2f74715ddfa304e8cac3ad5816868a",
"assets/assets/web_icons/connect.png": "20ed30d4c2f9cabec3078169d337f637",
"assets/assets/web_icons/copy.png": "071475a6f668d0408e79f4604d4bc0ab",
"assets/assets/web_icons/copy.svg": "20b6c8ba72afdcbb1969eace60246f6c",
"assets/assets/web_icons/copy1.svg": "fe8a3919fc5fc30e5105482854cd491e",
"assets/assets/web_icons/cross.png": "b07a056f599112811cc804efb3a458ba",
"assets/assets/web_icons/cross.svg": "b01ce92a21568107ede875e740b80397",
"assets/assets/web_icons/cross1.svg": "38fd57472e9e9c22ced43346989f1b69",
"assets/assets/web_icons/c_right.svg": "72bd9c7afaf0f66c11df6005852329f6",
"assets/assets/web_icons/delete.svg": "ba681977051342a7407ce208fab9c02b",
"assets/assets/web_icons/dollar.png": "7bedd5c3946ab6e306f6de15c79eb23d",
"assets/assets/web_icons/down.png": "19e2b6aa118b8f9a3ed6dad307ba73a6",
"assets/assets/web_icons/down_side.svg": "84aaf9e9134a3afa5c86f97f8545b62f",
"assets/assets/web_icons/down_side1.svg": "e1b86111ca47f6522a385ef7a24eb6e1",
"assets/assets/web_icons/edit.svg": "c6a13eae558e873ee80bf4f0530a599e",
"assets/assets/web_icons/filter.svg": "f3ace6396d0c148b30cd74cd5c7fb1e0",
"assets/assets/web_icons/fish.png": "caca090e07e4f19045bc3355f69dba30",
"assets/assets/web_icons/gmail.png": "ff21d7cf43e31a7a19956b0f9310d867",
"assets/assets/web_icons/info.svg": "2691865428d27ca9ba37912b78cf033e",
"assets/assets/web_icons/infos.png": "f87579de3dce6fd1c7e10b34680bc461",
"assets/assets/web_icons/lines.png": "c3e81974f1e1587cec5691cd48a7690e",
"assets/assets/web_icons/logo.png": "69ff4dd71b0e11237cb91d9e61307acd",
"assets/assets/web_icons/logo.svg": "dd9d36e086ec44a6f11f38c742673667",
"assets/assets/web_icons/logo1.svg": "6bd2c606f4ed75adb43a973c7f8d1972",
"assets/assets/web_icons/logo2.svg": "1f87bd29c5b0feebc1b5a0f9a946e7b9",
"assets/assets/web_icons/logo3.svg": "97deae6b15bccf0aaaff414e6a488b3a",
"assets/assets/web_icons/logo4.svg": "116c2f317199dab5848d0f5dbf4c26ef",
"assets/assets/web_icons/logo5.svg": "c7546d84c6b4a853a9999d7032601f11",
"assets/assets/web_icons/m1.png": "4396d60619576d3b61dd41099692d141",
"assets/assets/web_icons/m2.png": "48a59c1e7a8065156a30376166c5a2e8",
"assets/assets/web_icons/m3.png": "656baccafa0015ea2223adbf51344870",
"assets/assets/web_icons/m4.png": "1db770b0bf4fa86975089cdc52501a83",
"assets/assets/web_icons/m5.png": "8cfa4d9bf6930c117b8df9e02b405320",
"assets/assets/web_icons/m6.png": "f5624c41a25865e21beef7c29601dd0a",
"assets/assets/web_icons/med.png": "fc4224f36876eb00aca21e53aea0e81d",
"assets/assets/web_icons/notification.png": "0f3271e1bfb96202d73786c2896081e3",
"assets/assets/web_icons/notification.svg": "05c8c918b9f29761d6dbbffaf367c969",
"assets/assets/web_icons/notification1.svg": "c05a9badd8d122b29fdcbbb1d3e10f79",
"assets/assets/web_icons/pin.svg": "a4358a156d3e0044b968087ccac19437",
"assets/assets/web_icons/profile.png": "f22256fca9bc5143240876524333acd2",
"assets/assets/web_icons/qb.png": "740b54b38d366e2eca291347636dcc42",
"assets/assets/web_icons/qc.png": "e1454a1504a60cee7197fc8e6b63659d",
"assets/assets/web_icons/ql.png": "f3c6269219ba03b1d445717f4ea6980b",
"assets/assets/web_icons/qn.png": "0f9d456dd5acbbd344220aa9e78bd5f4",
"assets/assets/web_icons/qp.png": "14dd32d6c88d21a9d7a710b383a4d1a3",
"assets/assets/web_icons/qs.png": "56ad2ee83de2b6d1bc9eb767b48a5333",
"assets/assets/web_icons/qu.png": "a80376e666f48925ce33f50cbe0e9646",
"assets/assets/web_icons/question.svg": "840aa4e9c6bc4578341c57e753f41031",
"assets/assets/web_icons/raydium.png": "50987d445e2783aba166fd4b2500c9cb",
"assets/assets/web_icons/raydium.svg": "901f120f6951df6f1a0ccb9a23fc41d4",
"assets/assets/web_icons/right_side.svg": "8e6b6b2c3e97c2022f36c8c7bddfc6d5",
"assets/assets/web_icons/rocket.png": "5794b9c988345910abdbf68c70a0475a",
"assets/assets/web_icons/search.svg": "d0462d8bb8b70a7af3095fb018023ab5",
"assets/assets/web_icons/search1.svg": "3052e0656ad30e0fc25d52c4f7c6a106",
"assets/assets/web_icons/shd.png": "80cdd7d64ff9cfd587591b0e26735213",
"assets/assets/web_icons/shd1.png": "f7dc457012ee60385d6e540423ca084f",
"assets/assets/web_icons/star.svg": "28a7401529f8660e0d27e664efa909ae",
"assets/assets/web_icons/telegram.png": "f65bb298189c84b66cdff0c01c511636",
"assets/assets/web_icons/tick.svg": "adfd9b72647632c0303fcbdfa0906899",
"assets/assets/web_icons/tick1.svg": "8bb006a191a3d171b2929b35d1d92b32",
"assets/assets/web_icons/tick2.svg": "f452e0b22da2c79a66996f0798116655",
"assets/assets/web_icons/time.png": "7af5c08771a9126e86b258f031beb152",
"assets/assets/web_icons/time.svg": "8ef0160b00348389e6aa85ab0ea6bda4",
"assets/assets/web_icons/up.png": "27de3d85c0bab6e98615d955966af4a2",
"assets/assets/web_icons/user.svg": "99827957402d31164b08990a56a21d91",
"assets/assets/web_icons/waring.png": "6099b82779f090adb2aeee27c28b0421",
"assets/assets/web_icons/waring1.png": "fd6f3d87b33b6e1865fecd5948a41e84",
"assets/assets/web_icons/x.svg": "7d20e4fe6b6d154ecdc4e4527af86c4c",
"assets/FontManifest.json": "7dcb4af6540eab2bd6999ece847395bc",
"assets/fonts/Manrope-Bold.ttf": "69258532ce99ef9abf8220e0276fff04",
"assets/fonts/Manrope-Light.ttf": "9e353f65739cc41a37bed272850cf92e",
"assets/fonts/Manrope-Medium.ttf": "aa9897f9fa37c84d7b9d3d05a8a6bc07",
"assets/fonts/Manrope-Regular.ttf": "f8105661cf5923464f0db8290746d2f9",
"assets/fonts/MaterialIcons-Regular.otf": "1d82e14f9fa711be560627294de45719",
"assets/NOTICES": "5cd0e61b6295839c0cab99fe903056ae",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "9df25c139ba79dd6bf3d918949bc43de",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "02e91f4a699656a60ebb0d0b8766a593",
"/": "02e91f4a699656a60ebb0d0b8766a593",
"main.dart.js": "cd9422bd13dc31d37106ed9612467a47",
"manifest.json": "8eaf86f393f985e23fd8bea9d7990f33",
"version.json": "360666eaa9f3a7b561094fdb0822d483"};
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
