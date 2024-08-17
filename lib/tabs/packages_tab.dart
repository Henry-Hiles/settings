import 'package:flutter/widgets.dart';
import 'package:settings/models/tab.dart';
import 'package:yaru/yaru.dart';

class PackagesTab extends StatelessWidget implements TabPage {
  const PackagesTab({super.key});

  @override
  IconData get icon => YaruIcons.package;
  @override
  IconData get iconSelected => YaruIcons.package_filled;
  @override
  String get title => "Packages";

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
