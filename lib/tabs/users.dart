import 'package:flutter/widgets.dart';
import 'package:settings/models/tab.dart';
import 'package:yaru/yaru.dart';

class UsersTab extends StatelessWidget implements TabPage {
  const UsersTab({super.key});

  @override
  IconData get icon => YaruIcons.user;
  @override
  IconData get iconSelected => YaruIcons.user_filled;
  @override
  String get title => "Users";

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
