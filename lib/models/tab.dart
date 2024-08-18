import 'package:adwaita_icons/adwaita_icons.dart';
import 'package:flutter/widgets.dart';

abstract class TabPage extends Widget {
  const TabPage({super.key});

  String get title;
  AdwaitaIcon get icon;
}
