import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_readme_response.freezed.dart';
part 'fetch_readme_response.g.dart';

/// README取得レスポンス
@freezed
class FetchReadmeResponse with _$FetchReadmeResponse {
  const factory FetchReadmeResponse({
    required String name,
    required String path,
    required String sha,
    required int size,
    required String url,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'git_url') required String gitUrl,
    @JsonKey(name: 'download_url') required String downloadUrl,
    required String type,
    required String content,
    required String encoding,
    @JsonKey(name: '_links') required Links links,
  }) = _FetchReadmeResponse;

  factory FetchReadmeResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchReadmeResponseFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    required String self,
    required String git,
    required String html,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
