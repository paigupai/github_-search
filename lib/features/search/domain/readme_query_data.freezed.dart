// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'readme_query_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReadmeQueryData {
  String get owner => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReadmeQueryDataCopyWith<ReadmeQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadmeQueryDataCopyWith<$Res> {
  factory $ReadmeQueryDataCopyWith(
          ReadmeQueryData value, $Res Function(ReadmeQueryData) then) =
      _$ReadmeQueryDataCopyWithImpl<$Res, ReadmeQueryData>;
  @useResult
  $Res call({String owner, String repo, String branch});
}

/// @nodoc
class _$ReadmeQueryDataCopyWithImpl<$Res, $Val extends ReadmeQueryData>
    implements $ReadmeQueryDataCopyWith<$Res> {
  _$ReadmeQueryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? repo = null,
    Object? branch = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadmeQueryDataImplCopyWith<$Res>
    implements $ReadmeQueryDataCopyWith<$Res> {
  factory _$$ReadmeQueryDataImplCopyWith(_$ReadmeQueryDataImpl value,
          $Res Function(_$ReadmeQueryDataImpl) then) =
      __$$ReadmeQueryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String owner, String repo, String branch});
}

/// @nodoc
class __$$ReadmeQueryDataImplCopyWithImpl<$Res>
    extends _$ReadmeQueryDataCopyWithImpl<$Res, _$ReadmeQueryDataImpl>
    implements _$$ReadmeQueryDataImplCopyWith<$Res> {
  __$$ReadmeQueryDataImplCopyWithImpl(
      _$ReadmeQueryDataImpl _value, $Res Function(_$ReadmeQueryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? repo = null,
    Object? branch = null,
  }) {
    return _then(_$ReadmeQueryDataImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadmeQueryDataImpl implements _ReadmeQueryData {
  _$ReadmeQueryDataImpl(
      {required this.owner, required this.repo, required this.branch});

  @override
  final String owner;
  @override
  final String repo;
  @override
  final String branch;

  @override
  String toString() {
    return 'ReadmeQueryData(owner: $owner, repo: $repo, branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadmeQueryDataImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, owner, repo, branch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadmeQueryDataImplCopyWith<_$ReadmeQueryDataImpl> get copyWith =>
      __$$ReadmeQueryDataImplCopyWithImpl<_$ReadmeQueryDataImpl>(
          this, _$identity);
}

abstract class _ReadmeQueryData implements ReadmeQueryData {
  factory _ReadmeQueryData(
      {required final String owner,
      required final String repo,
      required final String branch}) = _$ReadmeQueryDataImpl;

  @override
  String get owner;
  @override
  String get repo;
  @override
  String get branch;
  @override
  @JsonKey(ignore: true)
  _$$ReadmeQueryDataImplCopyWith<_$ReadmeQueryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
