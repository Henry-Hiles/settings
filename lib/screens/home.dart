import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings/models/tab.dart';
import 'package:settings/tabs/packages_tab.dart';
import 'package:settings/tabs/users.dart';
import 'package:settings/widgets/appbar.dart';
import 'package:yaru/widgets.dart';
import 'package:yaru/yaru.dart';

const List<TabPage> tabs = [
  PackagesTab(),
  UsersTab(),
];

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => YaruMasterDetailPage(
        tileBuilder: (_, index, selected, __) {
          final tab = tabs[index];
          return YaruMasterTile(
            leading: Icon(selected ? tab.iconSelected : tab.icon),
            title: Text(tabs[index].title),
            selected: selected,
          );
        },
        pageBuilder: (context, index) => YaruDetailPage(
          appBar: Appbar(title: tabs[index].title),
          body: tabs[index],
        ),
        length: tabs.length,
        appBar: const Appbar.sidebar(title: "QuadOS Settings"),
      );
}
