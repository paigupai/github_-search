import 'package:freezed_annotation/freezed_annotation.dart';

part 'readme_query_data.freezed.dart';

/// READMEクエリーデータ
@freezed
class ReadmeQueryData with _$ReadmeQueryData {
  factory ReadmeQueryData({
    required String owner,
    required String repo,
    required String branch,
  }) = _ReadmeQueryData;
}
