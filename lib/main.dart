import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings/widgets/app.dart';
import 'package:window_size/window_size.dart';
import 'package:yaru/yaru.dart';

void main() async {
  await YaruWindowTitleBar.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  setWindowMinSize(const Size.fromRadius(250));

  runApp(const ProviderScope(child: App()));
}
