import 'dart:async';
import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/standalone.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../../app_info.dart';

class LocalNotificationServices {
  const LocalNotificationServices();
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static StreamController<NotificationResponse> streamController =
      StreamController();

  static void _onNotificationTapped(NotificationResponse response) {
    streamController.add(response);
  }

  static Future<void> initialize() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings('@drawable/notification_icon'),
      iOS: DarwinInitializationSettings(),
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
      onDidReceiveBackgroundNotificationResponse: _onNotificationTapped,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> testNotification() async {
    await _flutterLocalNotificationsPlugin.show(
      0,
      'title',
      'body',
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'test_channel',
          'Test Notifications',
          channelDescription: 'Notifies about test.',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> startWorkNotification() async {
    const NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        'work_channel',
        'Work Notifications',
        channelDescription: 'Notifies about work schedule.',
        importance: Importance.max,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(),
    );

    await tz.initializeTimeZone();
    tz.setLocalLocation(tz.getLocation("Africa/Cairo"));

    final tz.TZDateTime currentTimeZone = tz.TZDateTime.now(tz.local);

    tz.TZDateTime scheduleTime = tz.TZDateTime(
      tz.local,
      currentTimeZone.year,
      currentTimeZone.month,
      currentTimeZone.day,
      AppInfo.workStartTime.hour,
      AppInfo.workStartTime.minute,
    );

    if (scheduleTime.isBefore(currentTimeZone)) {
      scheduleTime = scheduleTime.add(const Duration(days: 1));
    }

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      Random().nextInt(10000),
      "بداية الدوام",
      "لا تنسى بصمة اليوم",
      scheduleTime,
      details,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  static Future<void> endWorkNotification() async {
    const NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        'work_channel',
        'Work Notifications',
        channelDescription: 'Notifies about work schedule.',
        importance: Importance.max,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(),
    );

    await _flutterLocalNotificationsPlugin.show(
      Random().nextInt(10000),
      "نهاية الدوام",
      "لا تنسى بصمة نهاية اليوم",
      details,
    );
  }
}
