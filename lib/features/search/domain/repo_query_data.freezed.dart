// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_query_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepoQueryData {
  String get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoQueryDataCopyWith<RepoQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoQueryDataCopyWith<$Res> {
  factory $RepoQueryDataCopyWith(
          RepoQueryData value, $Res Function(RepoQueryData) then) =
      _$RepoQueryDataCopyWithImpl<$Res, RepoQueryData>;
  @useResult
  $Res call({String query, int page});
}

/// @nodoc
class _$RepoQueryDataCopyWithImpl<$Res, $Val extends RepoQueryData>
    implements $RepoQueryDataCopyWith<$Res> {
  _$RepoQueryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoQueryDataImplCopyWith<$Res>
    implements $RepoQueryDataCopyWith<$Res> {
  factory _$$RepoQueryDataImplCopyWith(
          _$RepoQueryDataImpl value, $Res Function(_$RepoQueryDataImpl) then) =
      __$$RepoQueryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, int page});
}

/// @nodoc
class __$$RepoQueryDataImplCopyWithImpl<$Res>
    extends _$RepoQueryDataCopyWithImpl<$Res, _$RepoQueryDataImpl>
    implements _$$RepoQueryDataImplCopyWith<$Res> {
  __$$RepoQueryDataImplCopyWithImpl(
      _$RepoQueryDataImpl _value, $Res Function(_$RepoQueryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? page = null,
  }) {
    return _then(_$RepoQueryDataImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RepoQueryDataImpl implements _RepoQueryData {
  _$RepoQueryDataImpl({required this.query, required this.page});

  @override
  final String query;
  @override
  final int page;

  @override
  String toString() {
    return 'RepoQueryData(query: $query, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoQueryDataImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoQueryDataImplCopyWith<_$RepoQueryDataImpl> get copyWith =>
      __$$RepoQueryDataImplCopyWithImpl<_$RepoQueryDataImpl>(this, _$identity);
}

abstract class _RepoQueryData implements RepoQueryData {
  factory _RepoQueryData(
      {required final String query,
      required final int page}) = _$RepoQueryDataImpl;

  @override
  String get query;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$RepoQueryDataImplCopyWith<_$RepoQueryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
