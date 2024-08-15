import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';
import 'package:libadwaita_bitsdojo/libadwaita_bitsdojo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: AdwScaffold(
          headerBarStyle: const HeaderBarStyle(isTransparent: true),
          actions: AdwActions().bitsdojo,
          start: [
            AdwHeaderButton(
              icon: const Icon(Icons.info),
              onPressed: () {},
            ),
          ],
          title: const Text("Settings"),
          body: const AdwClamp.scrollable(
            child: Column(
              children: [
                Text("foo"),
                Icon(
                  Icons.circle,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                )
              ],
            ),
          ),
        ),
      );
}
