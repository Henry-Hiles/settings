import 'package:adwaita/adwaita.dart';
import 'package:flutter/material.dart';
import 'package:settings/widgets/home.dart';
import "package:dynamic_color/dynamic_color.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) => MaterialApp(
          home: const Home(),
          theme: lightDynamic == null
              ? AdwaitaThemeData.light()
              : ThemeData.from(colorScheme: lightDynamic),
          darkTheme: darkDynamic == null
              ? AdwaitaThemeData.dark()
              : ThemeData.from(colorScheme: darkDynamic),
          themeMode: ThemeMode.system,
        ),
      );
}
