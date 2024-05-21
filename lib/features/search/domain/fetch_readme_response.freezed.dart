// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_readme_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchReadmeResponse _$FetchReadmeResponseFromJson(Map<String, dynamic> json) {
  return _FetchReadmeResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchReadmeResponse {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get sha => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'git_url')
  String get gitUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  String get downloadUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get encoding => throw _privateConstructorUsedError;
  @JsonKey(name: '_links')
  Links get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchReadmeResponseCopyWith<FetchReadmeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchReadmeResponseCopyWith<$Res> {
  factory $FetchReadmeResponseCopyWith(
          FetchReadmeResponse value, $Res Function(FetchReadmeResponse) then) =
      _$FetchReadmeResponseCopyWithImpl<$Res, FetchReadmeResponse>;
  @useResult
  $Res call(
      {String name,
      String path,
      String sha,
      int size,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'git_url') String gitUrl,
      @JsonKey(name: 'download_url') String downloadUrl,
      String type,
      String content,
      String encoding,
      @JsonKey(name: '_links') Links links});

  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$FetchReadmeResponseCopyWithImpl<$Res, $Val extends FetchReadmeResponse>
    implements $FetchReadmeResponseCopyWith<$Res> {
  _$FetchReadmeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? sha = null,
    Object? size = null,
    Object? url = null,
    Object? htmlUrl = null,
    Object? gitUrl = null,
    Object? downloadUrl = null,
    Object? type = null,
    Object? content = null,
    Object? encoding = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      sha: null == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitUrl: null == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchReadmeResponseImplCopyWith<$Res>
    implements $FetchReadmeResponseCopyWith<$Res> {
  factory _$$FetchReadmeResponseImplCopyWith(_$FetchReadmeResponseImpl value,
          $Res Function(_$FetchReadmeResponseImpl) then) =
      __$$FetchReadmeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String path,
      String sha,
      int size,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'git_url') String gitUrl,
      @JsonKey(name: 'download_url') String downloadUrl,
      String type,
      String content,
      String encoding,
      @JsonKey(name: '_links') Links links});

  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$FetchReadmeResponseImplCopyWithImpl<$Res>
    extends _$FetchReadmeResponseCopyWithImpl<$Res, _$FetchReadmeResponseImpl>
    implements _$$FetchReadmeResponseImplCopyWith<$Res> {
  __$$FetchReadmeResponseImplCopyWithImpl(_$FetchReadmeResponseImpl _value,
      $Res Function(_$FetchReadmeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? sha = null,
    Object? size = null,
    Object? url = null,
    Object? htmlUrl = null,
    Object? gitUrl = null,
    Object? downloadUrl = null,
    Object? type = null,
    Object? content = null,
    Object? encoding = null,
    Object? links = null,
  }) {
    return _then(_$FetchReadmeResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      sha: null == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitUrl: null == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchReadmeResponseImpl implements _FetchReadmeResponse {
  const _$FetchReadmeResponseImpl(
      {required this.name,
      required this.path,
      required this.sha,
      required this.size,
      required this.url,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      @JsonKey(name: 'git_url') required this.gitUrl,
      @JsonKey(name: 'download_url') required this.downloadUrl,
      required this.type,
      required this.content,
      required this.encoding,
      @JsonKey(name: '_links') required this.links});

  factory _$FetchReadmeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchReadmeResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String path;
  @override
  final String sha;
  @override
  final int size;
  @override
  final String url;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey(name: 'git_url')
  final String gitUrl;
  @override
  @JsonKey(name: 'download_url')
  final String downloadUrl;
  @override
  final String type;
  @override
  final String content;
  @override
  final String encoding;
  @override
  @JsonKey(name: '_links')
  final Links links;

  @override
  String toString() {
    return 'FetchReadmeResponse(name: $name, path: $path, sha: $sha, size: $size, url: $url, htmlUrl: $htmlUrl, gitUrl: $gitUrl, downloadUrl: $downloadUrl, type: $type, content: $content, encoding: $encoding, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReadmeResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.sha, sha) || other.sha == sha) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, path, sha, size, url,
      htmlUrl, gitUrl, downloadUrl, type, content, encoding, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReadmeResponseImplCopyWith<_$FetchReadmeResponseImpl> get copyWith =>
      __$$FetchReadmeResponseImplCopyWithImpl<_$FetchReadmeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchReadmeResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchReadmeResponse implements FetchReadmeResponse {
  const factory _FetchReadmeResponse(
          {required final String name,
          required final String path,
          required final String sha,
          required final int size,
          required final String url,
          @JsonKey(name: 'html_url') required final String htmlUrl,
          @JsonKey(name: 'git_url') required final String gitUrl,
          @JsonKey(name: 'download_url') required final String downloadUrl,
          required final String type,
          required final String content,
          required final String encoding,
          @JsonKey(name: '_links') required final Links links}) =
      _$FetchReadmeResponseImpl;

  factory _FetchReadmeResponse.fromJson(Map<String, dynamic> json) =
      _$FetchReadmeResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get path;
  @override
  String get sha;
  @override
  int get size;
  @override
  String get url;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(name: 'git_url')
  String get gitUrl;
  @override
  @JsonKey(name: 'download_url')
  String get downloadUrl;
  @override
  String get type;
  @override
  String get content;
  @override
  String get encoding;
  @override
  @JsonKey(name: '_links')
  Links get links;
  @override
  @JsonKey(ignore: true)
  _$$FetchReadmeResponseImplCopyWith<_$FetchReadmeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String get self => throw _privateConstructorUsedError;
  String get git => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call({String self, String git, String html});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? git = null,
    Object? html = null,
  }) {
    return _then(_value.copyWith(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      git: null == git
          ? _value.git
          : git // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String self, String git, String html});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? git = null,
    Object? html = null,
  }) {
    return _then(_$LinksImpl(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      git: null == git
          ? _value.git
          : git // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl(
      {required this.self, required this.git, required this.html});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  final String self;
  @override
  final String git;
  @override
  final String html;

  @override
  String toString() {
    return 'Links(self: $self, git: $git, html: $html)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.git, git) || other.git == git) &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self, git, html);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {required final String self,
      required final String git,
      required final String html}) = _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  String get self;
  @override
  String get git;
  @override
  String get html;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
