import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repos_response.freezed.dart';
part 'search_repos_response.g.dart';

/// リポジトリ検索結果
@freezed
class SearchReposResponse with _$SearchReposResponse {
  const factory SearchReposResponse({
    @JsonKey(name: 'total_count') required int totalCount,
    required List<Repo> items,
  }) = _SearchReposResponse;

  factory SearchReposResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchReposResponseFromJson(json);
}

@freezed
class Repo with _$Repo {
  const factory Repo({
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required Owner owner,
    required String? description,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    String? language,
    @JsonKey(name: 'forks_count') required int forksCount,
    @JsonKey(name: 'open_issues_count') required int openIssuesCount,
    @JsonKey(name: 'default_branch') required String defaultBranch,
    String? repoUrl,
    String? stargazersUrl,
    String? watchersUrl,
    String? forksUrl,
    String? issuesUrl,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    @JsonKey(name: 'login') required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    String? ownerUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
