import 'package:flutter/material.dart';
import 'package:flutter_clock/ui/widgets/alarm_card.dart';
import 'package:provider/provider.dart';

import '../../providers/alarms.dart';

class AlarmList extends StatelessWidget {
  const AlarmList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Alarms>(builder: (context, value, child) {
      if (value.alarms.isEmpty) {
        return const Center(
          child: Text('No Alarms'),
        );
      }
      return Expanded(
        child: ListView.builder(
            itemCount: value.alarms.length,
            itemBuilder: (context, index) {
              return AlarmCard(value.alarms[index]);
            }),
      );
    });
  }
}
