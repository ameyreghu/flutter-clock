import 'package:flutter/material.dart';
import 'package:flutter_clock/main.dart';
import 'package:flutter_clock/providers/alarms.dart';
import 'package:flutter_clock/ui/widgets/alarm_list.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Alarms>(context, listen: false).initAlarms();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Provider.of<Alarms>(context, listen: false).initAlarms();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<Alarms>(context, listen: false).initAlarms();
    return Column(
      children: [
        const AlarmList(),
        const Spacer(),
        TextButton(
            onPressed: () async {
              var t = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());
              if (t == null) {
                return;
              }
              print(t);
              var timenow = DateTime.now();
              print(timenow);
              Duration scheduledTime =
                  Duration(hours: t.hour, minutes: t.minute, seconds: 0);
              Duration currentTime = Duration(
                  hours: timenow.hour,
                  minutes: timenow.minute,
                  seconds: timenow.second);
              var r = scheduledTime - currentTime;
              print(r.inSeconds);
              Provider.of<Alarms>(context, listen: false).insertAlarms(t, 1);
              sheduleAlarm(r);
              //notify('alarm');
            },
            child: const Text('Shedule alarn')),
      ],
    );
  }

  sheduleAlarm(Duration duration) {
    print(duration.inSeconds);
    var dtn = DateTime.now();
    Workmanager().registerOneOffTask("$dtn", "alarm",
        initialDelay: duration, inputData: {'name': 'Alarm @time', 'dt': '10'});
  }
}
