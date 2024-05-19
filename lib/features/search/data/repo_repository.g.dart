// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoRepositoryHash() => r'93d1ae4a240e55e6d23a707673d1f0438390e194';

/// See also [repoRepository].
@ProviderFor(repoRepository)
final repoRepositoryProvider = AutoDisposeProvider<RepoRepository>.internal(
  repoRepository,
  name: r'repoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repoRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepoRepositoryRef = AutoDisposeProviderRef<RepoRepository>;
String _$fetchRepoHash() => r'2ea5d507b583b2618d74a39f9fbc3ed6ad795c3c';

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

/// リポジトリ検索
///
/// Copied from [fetchRepo].
@ProviderFor(fetchRepo)
const fetchRepoProvider = FetchRepoFamily();

/// リポジトリ検索
///
/// Copied from [fetchRepo].
class FetchRepoFamily extends Family<AsyncValue<SearchReposResponse>> {
  /// リポジトリ検索
  ///
  /// Copied from [fetchRepo].
  const FetchRepoFamily();

  /// リポジトリ検索
  ///
  /// Copied from [fetchRepo].
  FetchRepoProvider call({
    required RepoQueryData queryData,
  }) {
    return FetchRepoProvider(
      queryData: queryData,
    );
  }

  @override
  FetchRepoProvider getProviderOverride(
    covariant FetchRepoProvider provider,
  ) {
    return call(
      queryData: provider.queryData,
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
  String? get name => r'fetchRepoProvider';
}

/// リポジトリ検索
///
/// Copied from [fetchRepo].
class FetchRepoProvider extends AutoDisposeFutureProvider<SearchReposResponse> {
  /// リポジトリ検索
  ///
  /// Copied from [fetchRepo].
  FetchRepoProvider({
    required RepoQueryData queryData,
  }) : this._internal(
          (ref) => fetchRepo(
            ref as FetchRepoRef,
            queryData: queryData,
          ),
          from: fetchRepoProvider,
          name: r'fetchRepoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRepoHash,
          dependencies: FetchRepoFamily._dependencies,
          allTransitiveDependencies: FetchRepoFamily._allTransitiveDependencies,
          queryData: queryData,
        );

  FetchRepoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.queryData,
  }) : super.internal();

  final RepoQueryData queryData;

  @override
  Override overrideWith(
    FutureOr<SearchReposResponse> Function(FetchRepoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRepoProvider._internal(
        (ref) => create(ref as FetchRepoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        queryData: queryData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SearchReposResponse> createElement() {
    return _FetchRepoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRepoProvider && other.queryData == queryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, queryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRepoRef on AutoDisposeFutureProviderRef<SearchReposResponse> {
  /// The parameter `queryData` of this provider.
  RepoQueryData get queryData;
}

class _FetchRepoProviderElement
    extends AutoDisposeFutureProviderElement<SearchReposResponse>
    with FetchRepoRef {
  _FetchRepoProviderElement(super.provider);

  @override
  RepoQueryData get queryData => (origin as FetchRepoProvider).queryData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
