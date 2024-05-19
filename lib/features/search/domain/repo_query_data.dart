import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_query_data.freezed.dart';

/// リポジトリクエリーデータ
@freezed
class RepoQueryData with _$RepoQueryData {
  factory RepoQueryData({
    required String query,
    required int page,
  }) = _RepoQueryData;
}
