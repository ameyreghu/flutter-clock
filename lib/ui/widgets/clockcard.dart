import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../constants/theme.dart';
import '../../models/timezonedata.dart';

class ClockCard extends StatefulWidget {
  TimeZoneData timeZoneData;
  LinearGradient gradient;
  List<Color> usedColors;
  ClockCard(
      {Key? key,
      required this.timeZoneData,
      required this.gradient,
      required this.usedColors})
      : super(key: key);

  @override
  State<ClockCard> createState() => _ClockCardState();
}

class _ClockCardState extends State<ClockCard> {
  var now = DateTime.now().toUtc();
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._timer = Timer.periodic(const Duration(seconds: 1), ((timer) {
      setState(() {
        now = DateTime.now().toUtc();
      });
    }));
  }

  @override
  void dispose() {
    super.dispose();
    this._timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final city =
        widget.timeZoneData.urlEndPoint.replaceAll(RegExp('^[^_]*/'), '');
    now = (widget.timeZoneData.offset['sign'] == '+')
        ? now.add(Duration(
            hours: int.parse(widget.timeZoneData.offset['hour']),
            minutes: int.parse(widget.timeZoneData.offset['minutes'])))
        : now.subtract(Duration(
            hours: int.parse(widget.timeZoneData.offset['hour']),
            minutes: int.parse(widget.timeZoneData.offset['minutes'])));
    var timeStr = DateFormat('hh:mm:ss a').format(now);
    var dateStr = DateFormat('dd MM yyyy').format(now);
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          gradient: widget.gradient,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 0,
                offset: const Offset(4, 4))
          ]),
      child: Row(children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            txt(city, context),
            // const Icon(
            //   Icons.cloud,
            //   color: Color(0xFFEAECFF),
            // )
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            )
          ],
        ),
        const Spacer(),
        Column(
          children: [
            txt(timeStr, context),
            Text(dateStr,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFFEAECFF)))
          ],
        )
      ]),
    );
  }
}

Widget txt(String text, BuildContext context) {
  return FittedBox(
    fit: BoxFit.fitWidth,
    child: Text(text, style: Theme.of(context).textTheme.headline6),
  );
}
