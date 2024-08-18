import 'package:adwaita_icons/adwaita_icons.dart';
import 'package:flutter/material.dart';
import 'package:settings/models/tab.dart';
import 'package:yaru/yaru.dart';

class PackagesTab extends StatelessWidget implements TabPage {
  const PackagesTab({super.key});

  @override
  AdwaitaIcon get icon => const AdwaitaIcon(
        AdwaitaIcons.package_x_generic,
        size: kYaruIconSize,
      );

  @override
  String get title => "Packages";

  @override
  Widget build(BuildContext context) => const Placeholder();
}
