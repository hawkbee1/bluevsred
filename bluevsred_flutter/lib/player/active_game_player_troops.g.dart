// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_game_player_troops.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeGamePlayerTroopsHash() =>
    r'51267afd22295cf189f9175f0ed0fe43e6afe1cb';

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

abstract class _$ActiveGamePlayerTroops
    extends BuildlessAutoDisposeAsyncNotifier<Set<Troop>> {
  late final Set<Troop> troops;

  FutureOr<Set<Troop>> build({
    required Set<Troop> troops,
  });
}

/// See also [ActiveGamePlayerTroops].
@ProviderFor(ActiveGamePlayerTroops)
const activeGamePlayerTroopsProvider = ActiveGamePlayerTroopsFamily();

/// See also [ActiveGamePlayerTroops].
class ActiveGamePlayerTroopsFamily extends Family<AsyncValue<Set<Troop>>> {
  /// See also [ActiveGamePlayerTroops].
  const ActiveGamePlayerTroopsFamily();

  /// See also [ActiveGamePlayerTroops].
  ActiveGamePlayerTroopsProvider call({
    required Set<Troop> troops,
  }) {
    return ActiveGamePlayerTroopsProvider(
      troops: troops,
    );
  }

  @override
  ActiveGamePlayerTroopsProvider getProviderOverride(
    covariant ActiveGamePlayerTroopsProvider provider,
  ) {
    return call(
      troops: provider.troops,
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
  String? get name => r'activeGamePlayerTroopsProvider';
}

/// See also [ActiveGamePlayerTroops].
class ActiveGamePlayerTroopsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ActiveGamePlayerTroops,
        Set<Troop>> {
  /// See also [ActiveGamePlayerTroops].
  ActiveGamePlayerTroopsProvider({
    required Set<Troop> troops,
  }) : this._internal(
          () => ActiveGamePlayerTroops()..troops = troops,
          from: activeGamePlayerTroopsProvider,
          name: r'activeGamePlayerTroopsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeGamePlayerTroopsHash,
          dependencies: ActiveGamePlayerTroopsFamily._dependencies,
          allTransitiveDependencies:
              ActiveGamePlayerTroopsFamily._allTransitiveDependencies,
          troops: troops,
        );

  ActiveGamePlayerTroopsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.troops,
  }) : super.internal();

  final Set<Troop> troops;

  @override
  FutureOr<Set<Troop>> runNotifierBuild(
    covariant ActiveGamePlayerTroops notifier,
  ) {
    return notifier.build(
      troops: troops,
    );
  }

  @override
  Override overrideWith(ActiveGamePlayerTroops Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveGamePlayerTroopsProvider._internal(
        () => create()..troops = troops,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        troops: troops,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ActiveGamePlayerTroops, Set<Troop>>
      createElement() {
    return _ActiveGamePlayerTroopsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveGamePlayerTroopsProvider && other.troops == troops;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, troops.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveGamePlayerTroopsRef
    on AutoDisposeAsyncNotifierProviderRef<Set<Troop>> {
  /// The parameter `troops` of this provider.
  Set<Troop> get troops;
}

class _ActiveGamePlayerTroopsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ActiveGamePlayerTroops,
        Set<Troop>> with ActiveGamePlayerTroopsRef {
  _ActiveGamePlayerTroopsProviderElement(super.provider);

  @override
  Set<Troop> get troops => (origin as ActiveGamePlayerTroopsProvider).troops;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
