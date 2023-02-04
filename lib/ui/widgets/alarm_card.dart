// import 'package:flutter/material.dart';
// import 'package:flutter_clock/constants/theme.dart';
// import 'package:flutter_clock/models/alarm.dart';
// import 'package:flutter_clock/providers/alarms.dart';
// import 'package:provider/provider.dart';
// import 'package:workmanager/workmanager.dart';

// class AlarmCard extends StatelessWidget {
//   final Alarm alarm;
//   const AlarmCard(this.alarm, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 32),
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         decoration: BoxDecoration(
//             gradient: GradientColors.sky,
//             borderRadius: BorderRadius.circular(24),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 1,
//                   spreadRadius: 0,
//                   offset: const Offset(4, 4))
//             ]),
//         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
//           Text(alarm.dateTime),
//           Text('Alarm ${alarm.id}'),
//           Switch(
//               activeColor: Colors.purpleAccent,
//               value: alarm.active == 1,
//               onChanged: (status) {
//                 Provider.of<Alarms>(context, listen: false)
//                     .toogleAlarm(alarm.id, alarm.active == 1 ? 0 : 1);
//                 if (alarm.active == 1) {
//                   Workmanager().cancelByUniqueName(alarm.id.toString());
//                 } else {}
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(const SnackBar(content: Text("Done")));
//               })
//         ]),
//       ),
//     );
//   }
// }
