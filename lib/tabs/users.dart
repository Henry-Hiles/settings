import 'package:adwaita_icons/adwaita_icons.dart';
import 'package:flutter/widgets.dart';
import 'package:settings/models/tab.dart';
import 'package:yaru/yaru.dart';

class UsersTab extends StatelessWidget implements TabPage {
  const UsersTab({super.key});

  @override
  AdwaitaIcon get icon => const AdwaitaIcon(
        AdwaitaIcons.system_users,
        size: kYaruIconSize,
      );
  @override
  String get title => "Users";

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
