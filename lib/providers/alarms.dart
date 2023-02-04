// import 'package:flutter/material.dart';
// import 'package:flutter_clock/db/db_helper.dart';
// import 'package:flutter_clock/models/alarm.dart';

// class Alarms with ChangeNotifier {
//   List<Alarm> _alarms = [];

//   List<Alarm> get alarms {
//     return [..._alarms];
//   }

//   insertAlarms(TimeOfDay time, int active) async {
//     //await DBHelper.insert('${time.hour}:${time.minute}', active);
//     initAlarms();
//   }

//   initAlarms() async {
//     final data = await DBHelper.getData();
//     print(data);
//     _alarms = [];
//     data.map((alarm) {
//       _alarms.add(Alarm(alarm['id'] as int,
//           dateTime: alarm['date'] as String, active: alarm['active'] as int));
//     }).toList();
//     notifyListeners();
//   }

//   toogleAlarm(int id, int active) async {
//     await DBHelper.update(id, active);
//     initAlarms();
//   }
// }
