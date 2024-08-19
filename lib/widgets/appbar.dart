import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings/providers/decorations_provider.dart';
import 'package:yaru/yaru.dart';

class Appbar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final bool isSidebar;

  const Appbar({
    required this.title,
    super.key,
  }) : isSidebar = false;

  const Appbar.sidebar({
    required this.title,
    super.key,
  }) : isSidebar = true;

  @override
  Size get preferredSize => const YaruWindowTitleBar().preferredSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final window = YaruWindow.of(context);
    List<Widget> getControl(List<YaruWindowControlType> types) => [
          const SizedBox(width: 6),
          ...types.map(
            (type) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: YaruWindowControl(
                type: type,
                onTap: switch (type) {
                  YaruWindowControlType.close => window.close,
                  YaruWindowControlType.maximize => () => window.state().then(
                        (state) => state.isMaximized!
                            ? window.restore()
                            : window.maximize(),
                      ),
                  YaruWindowControlType.minimize => window.minimize,
                  YaruWindowControlType.restore => window.restore,
                },
              ),
            ),
          ),
          const SizedBox(width: 6),
        ];

    final decorations = ref.watch(decorationsProvider);
    final alwaysShow =
        MediaQuery.of(context).size.width < kYaruMasterDetailBreakpoint;

    return YaruWindowTitleBar(
      title: Text(title),
      leading: Row(children: [
        if (alwaysShow || isSidebar) ...getControl(decorations.leading),
        if (!isSidebar && Navigator.of(context).canPop())
          const BackButton(
            style: ButtonStyle(
              iconSize: WidgetStatePropertyAll(20),
              minimumSize: WidgetStatePropertyAll(Size.square(0)),
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
            ),
          ),
      ]),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 12),
      actions:
          !alwaysShow && isSidebar ? null : getControl(decorations.trailing),
      backgroundColor: isSidebar
          ? YaruMasterDetailTheme.of(context).sideBarColor
          : Colors.transparent,
      border: BorderSide.none,
      style: YaruTitleBarStyle.undecorated,
    );
  }
}
