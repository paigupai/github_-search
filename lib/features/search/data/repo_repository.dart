import 'dart:async';

import 'package:dio/dio.dart';
import 'package:github_search/features/search/domain/fetch_readme_response.dart';
import 'package:github_search/features/search/domain/readme_query_data.dart';
import 'package:github_search/features/search/domain/repo_query_data.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
import 'package:github_search/utils/dio_provider.dart';
import 'package:github_search/utils/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo_repository.g.dart';

/// リポジトリリポジトリ
class RepoRepository {
  const RepoRepository({required this.client});
  final Dio client;

  // リポジトリ検索
  Future<SearchReposResponse> searchRepo({
    required RepoQueryData queryData,
  }) async {
    final uri = Uri(
      path: '/search/repositories',
      queryParameters: {
        'q': queryData.query,
        'page': '${queryData.page}',
      },
    );
    final response = await client.getUri(uri);
    return SearchReposResponse.fromJson(response.data);
  }

  // readme取得
  Future<FetchReadmeResponse> fetchReadme(
      {required ReadmeQueryData queryData}) async {
    final uri = Uri(
      path: '/repos/${queryData.owner}/${queryData.repo}/readme',
    );
    final response = await client.getUri(uri);
    return FetchReadmeResponse.fromJson(response.data);
  }
}

@riverpod
RepoRepository repoRepository(RepoRepositoryRef ref) {
  final client = ref.watch(dioProvider);
  client.options = BaseOptions(
    baseUrl: 'https://api.github.com',
    headers: {
      'Accept': 'application/vnd.github+json',
      'Authorization': 'Bearer ${Env.githubToken}',
      'X-GitHub-Api-Version': '2022-11-28',
    },
  );
  return RepoRepository(
    client: client,
  );
}

/// リポジトリ検索
@riverpod
Future<SearchReposResponse> fetchRepo(
  FetchRepoRef ref, {
  required RepoQueryData queryData,
}) async {
  final repoRepo = ref.watch(repoRepositoryProvider);

  return repoRepo.searchRepo(
    queryData: queryData,
  );
}

/// readme取得
@riverpod
Future<FetchReadmeResponse> fetchReadme(
  FetchReadmeRef ref, {
  required ReadmeQueryData queryData,
}) async {
  final readmeRepo = ref.watch(repoRepositoryProvider);

  return readmeRepo.fetchReadme(
    queryData: queryData,
  );
}
