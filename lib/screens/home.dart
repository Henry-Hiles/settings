import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings/widgets/appbar.dart';
import 'package:yaru/widgets.dart';
import 'package:yaru/yaru.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => YaruMasterDetailPage(
        tileBuilder: (_, index, selected, __) => YaruMasterTile(
          leading: const Icon(Icons.abc),
          title: const Text("To-do"),
          selected: selected,
        ),
        pageBuilder: (context, index) => const YaruDetailPage(
          appBar: Appbar(
            title: "Display",
          ),
        ),
        length: 10,
        appBar: const Appbar.sidebar(
          title: "QuadOS Settings",
        ),
      );
}
