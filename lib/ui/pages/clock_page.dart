import 'package:flutter/material.dart';

import '../widgets/analogclock.dart';
import '../widgets/digitalclock.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Container(
              alignment: Alignment.center,
              child: AnalogClock(
                size: size.height / 3,
              )),
        ),
        const DigitalClock(),
        // Expanded(
        //   child: FavoriteClock(),
        // )
      ],
    );
  }
}
