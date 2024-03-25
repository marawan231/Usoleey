import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


Future<void> backgroundHandler(RemoteMessage message) async =>
    await Firebase.initializeApp();

bool inOrderView = false;
String orderHashNotify = '';

class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    importance: Importance.high,
  );

  // ignore: unused_element
  Future<bool> _requestPermissions() async {
    bool? result;
    if (Platform.isIOS) {
      result = await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else {
      result = await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(_channel);
    }
    return result ?? false;
  }

  void _showNotification(RemoteMessage message) async {
    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails(
      presentAlert: false,
      presentBadge: false,
      presentSound: false,
      presentBanner: false,
    );
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      _channel.id,
      _channel.name,
      channelDescription: "Nova Provider",
      enableVibration: true,
      playSound: true,
      icon: "app_logo",
      importance: Importance.high,
      priority: Priority.max,
    );
    final notificationDetails = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    final notification = message.notification;
    await _flutterLocalNotificationsPlugin.show(notification.hashCode,
        notification?.title ?? '', notification?.body, notificationDetails,
        payload: json.encode(message.data));
  }

  Future<void> _initLocalNotification() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    DarwinInitializationSettings initializationSettingsIOS =
        const DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (NotificationResponse? payload) {
      if (payload?.payload != null) {
        handleNotificationsTap(RemoteMessage.fromMap(
            {'data': json.decode(payload?.payload ?? '')}));
      }
    });
  }

  Future<void> _registerNotification() async {
    FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    await firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void handleNotificationsTap(RemoteMessage? message) async {
    if (message == null) return;
    NotificationNavigator._instance?.onRouting(message);
  }

  Future<void> _saveFcmToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    print('token is $token');
  }

  Future<void> setupNotifications() async {
    await _saveFcmToken();
    await _registerNotification();
    await _initLocalNotification();
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onBackgroundMessage(backgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage event) async {
      if (Platform.isAndroid) {
        _showNotification(event);
      }
    });
    FirebaseMessaging.onMessageOpenedApp
        .listen((RemoteMessage event) => handleNotificationsTap(event));
    log("Notifications setup complete");
  }

  Future<RemoteMessage?> remoteMessageFromNotificationAppLaunch() async {
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await _flutterLocalNotificationsPlugin
            .getNotificationAppLaunchDetails();

    if (notificationAppLaunchDetails != null) {
      if (notificationAppLaunchDetails.notificationResponse != null) {
        return RemoteMessage.fromMap({
          'data': json.decode(
              notificationAppLaunchDetails.notificationResponse!.payload ?? '')
        });
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}

class NotificationNavigator {
  NotificationNavigator._({required this.onRouting});

  static NotificationNavigator? _instance;
  RemoteMessage? _message;

  factory NotificationNavigator(
      {required void Function(RemoteMessage message) onRouting}) {
    return _instance ??= NotificationNavigator._(onRouting: onRouting);
  }

  Future<void> init() async {
    _message = await FirebaseMessaging.instance.getInitialMessage();
    if (_message != null) {
      onRouting(_message!);
    }
  }

  final void Function(RemoteMessage message) onRouting;
}
