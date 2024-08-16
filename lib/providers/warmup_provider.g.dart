// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warmup_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$warmupHash() => r'34cbe5e031e2a9b2dc3b401684c2a32eb45e6050';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [warmup].
@ProviderFor(warmup)
const warmupProvider = WarmupFamily();

/// See also [warmup].
class WarmupFamily extends Family<AsyncValue<void>> {
  /// See also [warmup].
  const WarmupFamily();

  /// See also [warmup].
  WarmupProvider call(
    IList<AutoDisposeFutureProvider<dynamic>> providers,
  ) {
    return WarmupProvider(
      providers,
    );
  }

  @override
  WarmupProvider getProviderOverride(
    covariant WarmupProvider provider,
  ) {
    return call(
      provider.providers,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'warmupProvider';
}

/// See also [warmup].
class WarmupProvider extends AutoDisposeFutureProvider<void> {
  /// See also [warmup].
  WarmupProvider(
    IList<AutoDisposeFutureProvider<dynamic>> providers,
  ) : this._internal(
          (ref) => warmup(
            ref as WarmupRef,
            providers,
          ),
          from: warmupProvider,
          name: r'warmupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$warmupHash,
          dependencies: WarmupFamily._dependencies,
          allTransitiveDependencies: WarmupFamily._allTransitiveDependencies,
          providers: providers,
        );

  WarmupProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.providers,
  }) : super.internal();

  final IList<AutoDisposeFutureProvider<dynamic>> providers;

  @override
  Override overrideWith(
    FutureOr<void> Function(WarmupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WarmupProvider._internal(
        (ref) => create(ref as WarmupRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        providers: providers,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _WarmupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WarmupProvider && other.providers == providers;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, providers.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WarmupRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `providers` of this provider.
  IList<AutoDisposeFutureProvider<dynamic>> get providers;
}

class _WarmupProviderElement extends AutoDisposeFutureProviderElement<void>
    with WarmupRef {
  _WarmupProviderElement(super.provider);

  @override
  IList<AutoDisposeFutureProvider<dynamic>> get providers =>
      (origin as WarmupProvider).providers;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
