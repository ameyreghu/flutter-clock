import 'package:flutter/material.dart';
import 'package:flutter_clock/constants/theme.dart';
import 'package:flutter_clock/providers/timezones.dart';
import 'package:flutter_clock/ui/widgets/customsearch.dart';
import 'package:provider/provider.dart';

class AddFavoritesScreen extends StatelessWidget {
  static const routeName = '/addScreen';
  const AddFavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final zoneProvider = Provider.of<TimeZones>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              }),
          IconButton(
              icon: const Icon(Icons.done),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
            itemCount: zoneProvider.zonelist.length,
            itemBuilder: (ctx, int i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    margin: const EdgeInsets.only(bottom: 32),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        gradient: GradientColors.sunset,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 1,
                              spreadRadius: 0,
                              offset: const Offset(4, 4))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(zoneProvider.zonelist[i].urlEndPoint),
                              Text(
                                  'UTC offset - ${zoneProvider.zonelist[i].offset['sign']} ${zoneProvider.zonelist[i].offset['hour']}:${zoneProvider.zonelist[i].offset['minutes']}'),
                            ],
                          ),
                          Spacer(),
                          FavoriteButton(i: i),
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  int i;
  FavoriteButton({required this.i, Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    final zoneProvider = Provider.of<TimeZones>(context, listen: false);
    return IconButton(
      icon: Icon(zoneProvider.zonelist[widget.i].isFav
          ? Icons.favorite
          : Icons.favorite_border),
      onPressed: () {
        if (zoneProvider.zonelist[widget.i].isFav) {
          zoneProvider.removeFav(widget.i);
        } else {
          zoneProvider.addFav(zoneProvider.zonelist[widget.i], widget.i);
          // zoneProvider.updateFav(
          //     zoneProvider.zonelist[i].urlEndPoint, true);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('done')));
        }
        setState(() {});
      },
    );
  }
}
