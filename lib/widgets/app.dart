import 'package:adwaita/adwaita.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings/providers/button_layout_provider.dart';
import 'package:settings/providers/warmup_provider.dart';
import 'package:settings/screens/home.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp(
        home: ref
            .watch(warmupProvider(IList([buttonLayoutProvider])))
            .whenOrNull(data: (_) => const Home()),
        theme: AdwaitaThemeData.light(),
        darkTheme: AdwaitaThemeData.dark(),
        debugShowCheckedModeBanner: false,
      );
}
