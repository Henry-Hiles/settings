import 'package:flutter/material.dart';
import 'package:settings/widgets/app.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  await windowManager.waitUntilReadyToShow(
    const WindowOptions(titleBarStyle: TitleBarStyle.hidden),
  );

  runApp(const App());
}
