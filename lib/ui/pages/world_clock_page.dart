import 'package:flutter/material.dart';
import 'package:flutter_clock/constants/theme.dart';
import 'package:flutter_clock/providers/timezones.dart';
import 'package:flutter_clock/ui/screens/addFavoritesScreen.dart';
import 'package:flutter_clock/ui/widgets/clockcard.dart';
import 'package:provider/provider.dart';

class WorldClockPage extends StatefulWidget {
  const WorldClockPage({Key? key}) : super(key: key);

  @override
  State<WorldClockPage> createState() => _WorldClockPageState();
}

class _WorldClockPageState extends State<WorldClockPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<TimeZones>(context, listen: false).initFavoritesList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddFavoritesScreen.routeName);
              },
            )
          ],
        ),
        Consumer<TimeZones>(builder: (context, val, _) {
          return Expanded(
            child: ListView.builder(
              itemCount: val.favoriteList.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(val.favoriteList[index].urlEndPoint),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (_) {
                    int i = Provider.of<TimeZones>(context, listen: false)
                        .zonelist
                        .indexWhere((element) =>
                            element.urlEndPoint ==
                            val.favoriteList[index].urlEndPoint);

                    Provider.of<TimeZones>(context, listen: false).removeFav(i);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClockCard(
                        timeZoneData: val.favoriteList[index],
                        gradient: GradientColors.sky,
                        usedColors: UsedColors.sky),
                  ),
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
