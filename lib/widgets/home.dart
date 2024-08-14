import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';
import 'package:libadwaita_bitsdojo/libadwaita_bitsdojo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => AdwScaffold(
        actions: AdwActions().bitsdojo,
        start: [
          AdwHeaderButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
        ],
        title: const Text("Settings"),
        body: AdwClamp.scrollable(
          child: Column(
            children: [
              Icon(
                Icons.circle,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      );
}
