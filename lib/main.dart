import 'package:flutter/material.dart';
import 'package:flutter_clock/providers/timezones.dart';
import 'package:flutter_clock/ui/screens/addFavoritesScreen.dart';

import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import './ui/home.dart';
import 'package:workmanager/workmanager.dart';

import 'providers/alarms.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// flutter local noifications
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings initializationSettingsAndroid =
      const AndroidInitializationSettings('@mipmap/ic_launcher');
  InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (msg) async {
    debugPrint(msg);
  });

  ///Work manager
  Workmanager().initialize(
      callbackDispatcher, // The top level function, aka callbackDispatcher
      isInDebugMode:
          false // If enabled it will post a notification whenever the task is running. Handy for debugging tasks
      );
  // Workmanager().registerOneOffTask("task-identifier", "simpleTask");
  runApp(const MyApp());
}

@pragma(
    'vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
void callbackDispatcher() async {
  try {
    Workmanager().executeTask((task, inputData) {
      var r = inputData?['name'];
      r ??= 'no data';
      print(
          "Native called background task: $r"); //simpleTask will be emitted here.
      notify('Sheduled');
      return Future.value(true);
    });
  } catch (e) {
    print(e);
  }
}

notify(String title) async {
  WidgetsFlutterBinding.ensureInitialized();
  print('notify');
  var sheduledDt = DateTime.now().add(const Duration(seconds: 10));
  var androidPlatformSpecifics = const AndroidNotificationDetails(
      'alarm_notif', 'alarm_notif',
      icon: '@mipmap/ic_launcher',
      autoCancel: false,
      color: Colors.blue,
      colorized: true,
      showWhen: true,
      usesChronometer: true,
      importance: Importance.high);

  var paltformSpecifcs = NotificationDetails(android: androidPlatformSpecifics);
  return await flutterLocalNotificationsPlugin.show(
      1, title, 'ALARM', paltformSpecifcs);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: TimeZones(),
        ),
        ChangeNotifierProvider.value(value: Alarms())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.amber,
            accentColor: Colors.blueAccent,
            brightness: Brightness.dark,
            buttonColor: const Color(0xFFEAECFF)),
        home: const HomeScreen(),
        routes: {
          AddFavoritesScreen.routeName: (context) => const AddFavoritesScreen(),
        },
      ),
    );
  }
}
