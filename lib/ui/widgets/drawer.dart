import 'package:flutter/material.dart';
import 'package:flutter_clock/ui/screens/addFavoritesScreen.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    backgroundColor: const Color(0xFF2D2F41),
    child: Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 40, left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icon/icon.png',
                  scale: 2,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.contain,
                ),
              ),
              const Text('Clock'),
              const Text('Made in Flutter'),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorite Clocks'),
          subtitle: const Text('Add or Remove Clocks'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.of(context).pushNamed(AddFavoritesScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          subtitle: const Text('Toggle something here and there'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Comming Soon")));
          },
        ),
        const Spacer(),
        ListTile(
          leading: const Icon(Icons.logo_dev_sharp),
          title: const Text('DEVELOPED BY'),
          subtitle: const Text('AMEY REGHU'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Comming soon")));
          },
        ),
      ],
    ),
  );
}
