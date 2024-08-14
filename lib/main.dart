import 'package:flutter/material.dart';
import 'package:settings/widgets/app.dart';
import 'package:yaru_window/yaru_window.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final instance = await YaruWindow.ensureInitialized();
  await instance.hideTitle();
  await instance.setBackground(Colors.transparent);
  runApp(const App());
}
