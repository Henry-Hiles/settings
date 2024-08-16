import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part "warmup_provider.g.dart";

@riverpod
Future<void> warmup(
  WarmupRef ref,
  IList<AutoDisposeFutureProvider> providers,
) async =>
    await Future.wait(
      providers.map(
        (provider) => ref.watch(provider.future),
      ),
    );
