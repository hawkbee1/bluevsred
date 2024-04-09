// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_game_player.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeGamePlayerHash() => r'6e6474c25bd208585712989d2b8d500cad66ced1';

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

abstract class _$ActiveGamePlayer
    extends BuildlessAutoDisposeAsyncNotifier<GamePlayer> {
  late final String creationName;

  FutureOr<GamePlayer> build(
    String creationName,
  );
}

/// See also [ActiveGamePlayer].
@ProviderFor(ActiveGamePlayer)
const activeGamePlayerProvider = ActiveGamePlayerFamily();

/// See also [ActiveGamePlayer].
class ActiveGamePlayerFamily extends Family<AsyncValue<GamePlayer>> {
  /// See also [ActiveGamePlayer].
  const ActiveGamePlayerFamily();

  /// See also [ActiveGamePlayer].
  ActiveGamePlayerProvider call(
    String creationName,
  ) {
    return ActiveGamePlayerProvider(
      creationName,
    );
  }

  @override
  ActiveGamePlayerProvider getProviderOverride(
    covariant ActiveGamePlayerProvider provider,
  ) {
    return call(
      provider.creationName,
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
  String? get name => r'activeGamePlayerProvider';
}

/// See also [ActiveGamePlayer].
class ActiveGamePlayerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ActiveGamePlayer, GamePlayer> {
  /// See also [ActiveGamePlayer].
  ActiveGamePlayerProvider(
    String creationName,
  ) : this._internal(
          () => ActiveGamePlayer()..creationName = creationName,
          from: activeGamePlayerProvider,
          name: r'activeGamePlayerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeGamePlayerHash,
          dependencies: ActiveGamePlayerFamily._dependencies,
          allTransitiveDependencies:
              ActiveGamePlayerFamily._allTransitiveDependencies,
          creationName: creationName,
        );

  ActiveGamePlayerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.creationName,
  }) : super.internal();

  final String creationName;

  @override
  FutureOr<GamePlayer> runNotifierBuild(
    covariant ActiveGamePlayer notifier,
  ) {
    return notifier.build(
      creationName,
    );
  }

  @override
  Override overrideWith(ActiveGamePlayer Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveGamePlayerProvider._internal(
        () => create()..creationName = creationName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        creationName: creationName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ActiveGamePlayer, GamePlayer>
      createElement() {
    return _ActiveGamePlayerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveGamePlayerProvider &&
        other.creationName == creationName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, creationName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveGamePlayerRef on AutoDisposeAsyncNotifierProviderRef<GamePlayer> {
  /// The parameter `creationName` of this provider.
  String get creationName;
}

class _ActiveGamePlayerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ActiveGamePlayer,
        GamePlayer> with ActiveGamePlayerRef {
  _ActiveGamePlayerProviderElement(super.provider);

  @override
  String get creationName => (origin as ActiveGamePlayerProvider).creationName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
