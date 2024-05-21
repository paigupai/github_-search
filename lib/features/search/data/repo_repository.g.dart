// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoRepositoryHash() => r'8185b7bc83cc10a61e09110d93e6348cd6201869';

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
String _$fetchRepoHash() => r'c2dc871dcc512a974206b1693378fc8bb53f0799';

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

String _$fetchReadmeHash() => r'656948918099b8e7bd4f037a164b7d1abf01f23d';

/// readme取得
///
/// Copied from [fetchReadme].
@ProviderFor(fetchReadme)
const fetchReadmeProvider = FetchReadmeFamily();

/// readme取得
///
/// Copied from [fetchReadme].
class FetchReadmeFamily extends Family<AsyncValue<FetchReadmeResponse>> {
  /// readme取得
  ///
  /// Copied from [fetchReadme].
  const FetchReadmeFamily();

  /// readme取得
  ///
  /// Copied from [fetchReadme].
  FetchReadmeProvider call({
    required ReadmeQueryData queryData,
  }) {
    return FetchReadmeProvider(
      queryData: queryData,
    );
  }

  @override
  FetchReadmeProvider getProviderOverride(
    covariant FetchReadmeProvider provider,
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
  String? get name => r'fetchReadmeProvider';
}

/// readme取得
///
/// Copied from [fetchReadme].
class FetchReadmeProvider
    extends AutoDisposeFutureProvider<FetchReadmeResponse> {
  /// readme取得
  ///
  /// Copied from [fetchReadme].
  FetchReadmeProvider({
    required ReadmeQueryData queryData,
  }) : this._internal(
          (ref) => fetchReadme(
            ref as FetchReadmeRef,
            queryData: queryData,
          ),
          from: fetchReadmeProvider,
          name: r'fetchReadmeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchReadmeHash,
          dependencies: FetchReadmeFamily._dependencies,
          allTransitiveDependencies:
              FetchReadmeFamily._allTransitiveDependencies,
          queryData: queryData,
        );

  FetchReadmeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.queryData,
  }) : super.internal();

  final ReadmeQueryData queryData;

  @override
  Override overrideWith(
    FutureOr<FetchReadmeResponse> Function(FetchReadmeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchReadmeProvider._internal(
        (ref) => create(ref as FetchReadmeRef),
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
  AutoDisposeFutureProviderElement<FetchReadmeResponse> createElement() {
    return _FetchReadmeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchReadmeProvider && other.queryData == queryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, queryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchReadmeRef on AutoDisposeFutureProviderRef<FetchReadmeResponse> {
  /// The parameter `queryData` of this provider.
  ReadmeQueryData get queryData;
}

class _FetchReadmeProviderElement
    extends AutoDisposeFutureProviderElement<FetchReadmeResponse>
    with FetchReadmeRef {
  _FetchReadmeProviderElement(super.provider);

  @override
  ReadmeQueryData get queryData => (origin as FetchReadmeProvider).queryData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
