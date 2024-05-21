// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repos_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchReposResponse _$SearchReposResponseFromJson(Map<String, dynamic> json) {
  return _SearchReposResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchReposResponse {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  List<Repo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchReposResponseCopyWith<SearchReposResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchReposResponseCopyWith<$Res> {
  factory $SearchReposResponseCopyWith(
          SearchReposResponse value, $Res Function(SearchReposResponse) then) =
      _$SearchReposResponseCopyWithImpl<$Res, SearchReposResponse>;
  @useResult
  $Res call({@JsonKey(name: 'total_count') int totalCount, List<Repo> items});
}

/// @nodoc
class _$SearchReposResponseCopyWithImpl<$Res, $Val extends SearchReposResponse>
    implements $SearchReposResponseCopyWith<$Res> {
  _$SearchReposResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchReposResponseImplCopyWith<$Res>
    implements $SearchReposResponseCopyWith<$Res> {
  factory _$$SearchReposResponseImplCopyWith(_$SearchReposResponseImpl value,
          $Res Function(_$SearchReposResponseImpl) then) =
      __$$SearchReposResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'total_count') int totalCount, List<Repo> items});
}

/// @nodoc
class __$$SearchReposResponseImplCopyWithImpl<$Res>
    extends _$SearchReposResponseCopyWithImpl<$Res, _$SearchReposResponseImpl>
    implements _$$SearchReposResponseImplCopyWith<$Res> {
  __$$SearchReposResponseImplCopyWithImpl(_$SearchReposResponseImpl _value,
      $Res Function(_$SearchReposResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_$SearchReposResponseImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchReposResponseImpl implements _SearchReposResponse {
  const _$SearchReposResponseImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      required final List<Repo> items})
      : _items = items;

  factory _$SearchReposResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchReposResponseImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<Repo> _items;
  @override
  List<Repo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchReposResponse(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchReposResponseImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchReposResponseImplCopyWith<_$SearchReposResponseImpl> get copyWith =>
      __$$SearchReposResponseImplCopyWithImpl<_$SearchReposResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchReposResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchReposResponse implements SearchReposResponse {
  const factory _SearchReposResponse(
      {@JsonKey(name: 'total_count') required final int totalCount,
      required final List<Repo> items}) = _$SearchReposResponseImpl;

  factory _SearchReposResponse.fromJson(Map<String, dynamic> json) =
      _$SearchReposResponseImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  List<Repo> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchReposResponseImplCopyWith<_$SearchReposResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Repo _$RepoFromJson(Map<String, dynamic> json) {
  return _Repo.fromJson(json);
}

/// @nodoc
mixin _$Repo {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_branch')
  String get defaultBranch => throw _privateConstructorUsedError;
  String? get repoUrl => throw _privateConstructorUsedError;
  String? get stargazersUrl => throw _privateConstructorUsedError;
  String? get watchersUrl => throw _privateConstructorUsedError;
  String? get forksUrl => throw _privateConstructorUsedError;
  String? get issuesUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoCopyWith<Repo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoCopyWith<$Res> {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) then) =
      _$RepoCopyWithImpl<$Res, Repo>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      String? description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      String? language,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      @JsonKey(name: 'default_branch') String defaultBranch,
      String? repoUrl,
      String? stargazersUrl,
      String? watchersUrl,
      String? forksUrl,
      String? issuesUrl});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepoCopyWithImpl<$Res, $Val extends Repo>
    implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = freezed,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? defaultBranch = null,
    Object? repoUrl = freezed,
    Object? stargazersUrl = freezed,
    Object? watchersUrl = freezed,
    Object? forksUrl = freezed,
    Object? issuesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
      repoUrl: freezed == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersUrl: freezed == stargazersUrl
          ? _value.stargazersUrl
          : stargazersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      watchersUrl: freezed == watchersUrl
          ? _value.watchersUrl
          : watchersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      forksUrl: freezed == forksUrl
          ? _value.forksUrl
          : forksUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      issuesUrl: freezed == issuesUrl
          ? _value.issuesUrl
          : issuesUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoImplCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$$RepoImplCopyWith(
          _$RepoImpl value, $Res Function(_$RepoImpl) then) =
      __$$RepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      String? description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      String? language,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      @JsonKey(name: 'default_branch') String defaultBranch,
      String? repoUrl,
      String? stargazersUrl,
      String? watchersUrl,
      String? forksUrl,
      String? issuesUrl});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepoImplCopyWithImpl<$Res>
    extends _$RepoCopyWithImpl<$Res, _$RepoImpl>
    implements _$$RepoImplCopyWith<$Res> {
  __$$RepoImplCopyWithImpl(_$RepoImpl _value, $Res Function(_$RepoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = freezed,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? defaultBranch = null,
    Object? repoUrl = freezed,
    Object? stargazersUrl = freezed,
    Object? watchersUrl = freezed,
    Object? forksUrl = freezed,
    Object? issuesUrl = freezed,
  }) {
    return _then(_$RepoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
      repoUrl: freezed == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersUrl: freezed == stargazersUrl
          ? _value.stargazersUrl
          : stargazersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      watchersUrl: freezed == watchersUrl
          ? _value.watchersUrl
          : watchersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      forksUrl: freezed == forksUrl
          ? _value.forksUrl
          : forksUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      issuesUrl: freezed == issuesUrl
          ? _value.issuesUrl
          : issuesUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoImpl implements _Repo {
  const _$RepoImpl(
      {required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.owner,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      required this.description,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      this.language,
      @JsonKey(name: 'forks_count') required this.forksCount,
      @JsonKey(name: 'open_issues_count') required this.openIssuesCount,
      @JsonKey(name: 'default_branch') required this.defaultBranch,
      this.repoUrl,
      this.stargazersUrl,
      this.watchersUrl,
      this.forksUrl,
      this.issuesUrl});

  factory _$RepoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final Owner owner;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  final String? description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  final String? language;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;
  @override
  @JsonKey(name: 'default_branch')
  final String defaultBranch;
  @override
  final String? repoUrl;
  @override
  final String? stargazersUrl;
  @override
  final String? watchersUrl;
  @override
  final String? forksUrl;
  @override
  final String? issuesUrl;

  @override
  String toString() {
    return 'Repo(name: $name, fullName: $fullName, owner: $owner, htmlUrl: $htmlUrl, description: $description, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount, openIssuesCount: $openIssuesCount, defaultBranch: $defaultBranch, repoUrl: $repoUrl, stargazersUrl: $stargazersUrl, watchersUrl: $watchersUrl, forksUrl: $forksUrl, issuesUrl: $issuesUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch) &&
            (identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl) &&
            (identical(other.stargazersUrl, stargazersUrl) ||
                other.stargazersUrl == stargazersUrl) &&
            (identical(other.watchersUrl, watchersUrl) ||
                other.watchersUrl == watchersUrl) &&
            (identical(other.forksUrl, forksUrl) ||
                other.forksUrl == forksUrl) &&
            (identical(other.issuesUrl, issuesUrl) ||
                other.issuesUrl == issuesUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      fullName,
      owner,
      htmlUrl,
      description,
      stargazersCount,
      watchersCount,
      language,
      forksCount,
      openIssuesCount,
      defaultBranch,
      repoUrl,
      stargazersUrl,
      watchersUrl,
      forksUrl,
      issuesUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoImplCopyWith<_$RepoImpl> get copyWith =>
      __$$RepoImplCopyWithImpl<_$RepoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoImplToJson(
      this,
    );
  }
}

abstract class _Repo implements Repo {
  const factory _Repo(
      {required final String name,
      @JsonKey(name: 'full_name') required final String fullName,
      required final Owner owner,
      @JsonKey(name: 'html_url') required final String htmlUrl,
      required final String? description,
      @JsonKey(name: 'stargazers_count') required final int stargazersCount,
      @JsonKey(name: 'watchers_count') required final int watchersCount,
      final String? language,
      @JsonKey(name: 'forks_count') required final int forksCount,
      @JsonKey(name: 'open_issues_count') required final int openIssuesCount,
      @JsonKey(name: 'default_branch') required final String defaultBranch,
      final String? repoUrl,
      final String? stargazersUrl,
      final String? watchersUrl,
      final String? forksUrl,
      final String? issuesUrl}) = _$RepoImpl;

  factory _Repo.fromJson(Map<String, dynamic> json) = _$RepoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  Owner get owner;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  String? get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  String? get language;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount;
  @override
  @JsonKey(name: 'default_branch')
  String get defaultBranch;
  @override
  String? get repoUrl;
  @override
  String? get stargazersUrl;
  @override
  String? get watchersUrl;
  @override
  String? get forksUrl;
  @override
  String? get issuesUrl;
  @override
  @JsonKey(ignore: true)
  _$$RepoImplCopyWith<_$RepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  @JsonKey(name: 'login')
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get ownerUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String login,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      String? ownerUrl});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? ownerUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ownerUrl: freezed == ownerUrl
          ? _value.ownerUrl
          : ownerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String login,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      String? ownerUrl});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? ownerUrl = freezed,
  }) {
    return _then(_$OwnerImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ownerUrl: freezed == ownerUrl
          ? _value.ownerUrl
          : ownerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl(
      {@JsonKey(name: 'login') required this.login,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      this.ownerUrl});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  final String? ownerUrl;

  @override
  String toString() {
    return 'Owner(login: $login, avatarUrl: $avatarUrl, ownerUrl: $ownerUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.ownerUrl, ownerUrl) ||
                other.ownerUrl == ownerUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl, ownerUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
      {@JsonKey(name: 'login') required final String login,
      @JsonKey(name: 'avatar_url') required final String avatarUrl,
      final String? ownerUrl}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  @JsonKey(name: 'login')
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  String? get ownerUrl;
  @override
  @JsonKey(ignore: true)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
