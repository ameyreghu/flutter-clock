import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({Key? key}) : super(key: key);

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  late Timer timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.timer = Timer.periodic(Duration(seconds: 1), ((timer) {
      setState(() {});
    }));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    this.timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    var tstr = DateFormat('hh:mm:ss a').format(dt);
    var dstr = DateFormat('dd MM yyyy').format(dt);
    var timezoneString = dt.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-')) offsetSign = '+';
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.transparent,
      child: Card(
        elevation: 0,
        color: Color(0xFF2D2F41),
        child: Column(
          children: [
            Text(
              dt.timeZoneName + '  ' + 'UTC' + offsetSign + timezoneString,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFEAECFF),
              ),
            ),
            Text(
              tstr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w900, color: Color(0xFFEAECFF)),
            ),
            // SizedBox(
            //   height: 100,
            // ),
            // Text(
            //   dstr,
            //   textAlign: TextAlign.center,
            //   style: Theme.of(context).textTheme.headline4!.copyWith(
            //       fontWeight: FontWeight.w600, color: Color(0xFFEAECFF)),
            // )
          ],
        ),
      ),
    );
  }
}
  // var dt= DateTime.now();
  // var str = dt.toUtc();
  // print(dt);
  // print(dt.toIso8601String());
  // print(str);
  // print(str.toIso8601String());
  // print(dt.timeZoneOffset);
  // print(dt.timeZoneName);
  // print(str.timeZoneName);
  // print(str.timeZoneOffset);