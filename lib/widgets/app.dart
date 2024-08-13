import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';
import 'package:libadwaita_bitsdojo/libadwaita_bitsdojo.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: AdwScaffold(
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
            children: [],
          )),
        ),
        // theme: AdwaitaThemeData.light(),
        // darkTheme: AdwaitaThemeData.dark(),
      );
}
