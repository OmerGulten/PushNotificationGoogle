importScripts("https://www.gstatic.com/firebasejs/7.16.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.16.1/firebase-messaging.js",);
importScripts("https://www.gstatic.com/firebasejs/7.16.1/firebase-analytics.js",);

firebase.initializeApp({
    apiKey: "AIzaSyBLNMvID_rnw3VkzCdbOrkJ2a0NOlOp58w",
    authDomain: "pushnotificationfcm-b0311.firebaseapp.com",
    projectId: "pushnotificationfcm-b0311",
    storageBucket: "pushnotificationfcm-b0311.appspot.com",
    messagingSenderId: "734291190246",
    appId: "1:734291190246:web:437917fc36ba2d50a0b627",
    measurementId: "G-RYXW0SJTDZ"
});

const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload) {
    console.log(
        "[firebase-messaging-sw.js] Received background message ",
        payload,
    );

    const notificationTitle = "Background Message Title";
    const notificationOptions = {
        body: "Background Message body.",
        icon: "/kalfa.png",
    };

    return self.registration.showNotification(
        notificationTitle,
        notificationOptions,
    );
});