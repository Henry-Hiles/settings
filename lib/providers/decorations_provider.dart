import "package:riverpod_annotation/riverpod_annotation.dart";
import 'package:settings/models/decorations.dart';
import 'package:settings/providers/button_layout_provider.dart';
import 'package:yaru/yaru.dart';
import "package:collection/collection.dart";
part 'decorations_provider.g.dart';

@riverpod
Decorations decorations(DecorationsRef ref) {
  List<YaruWindowControlType> parse(String section) => section
      .split(",")
      .map(
        (button) => YaruWindowControlType.values.firstWhereOrNull(
          (element) => element.name == button,
        ),
      )
      .whereNotNull()
      .toList();

  final buttons = ref.watch(buttonLayoutProvider).requireValue;

  final [leading, trailing] = buttons.split(":");
  return Decorations(
    leading: parse(leading),
    trailing: parse(trailing),
  );
}
