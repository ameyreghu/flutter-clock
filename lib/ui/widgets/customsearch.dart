import 'package:flutter/material.dart';
import 'package:flutter_clock/models/timezonedata.dart';
import 'package:flutter_clock/providers/timezones.dart';
import 'package:flutter_clock/ui/screens/addFavoritesScreen.dart';
import 'package:provider/provider.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('not implemented');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // final List<TimeZoneData> sugesstions = [];
    final List<TimeZoneData> sug =
        Provider.of<TimeZones>(context, listen: false).zonelist;
    var suggestion = sug
        .where((element) =>
            element.urlEndPoint.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: suggestion.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestion[index].urlEndPoint),
          subtitle: Text(suggestion[index].offset.toString()),
          trailing: FavoriteButton(
              i: Provider.of<TimeZones>(context, listen: false)
                  .zonelist
                  .indexWhere((element) =>
                      element.urlEndPoint == suggestion[index].urlEndPoint)),
        );
      },
    );
  }
}
