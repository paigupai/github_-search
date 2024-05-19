import 'dart:async';

import 'package:dio/dio.dart';
import 'package:github_search/features/search/domain/repo_query_data.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
import 'package:github_search/utils/dio_provider.dart';
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
}

@riverpod
RepoRepository repoRepository(RepoRepositoryRef ref) => RepoRepository(
      client: ref.watch(dioProvider),
    );

/// リポジトリ検索
@riverpod
Future<SearchReposResponse> fetchRepo(
  FetchRepoRef ref, {
  required RepoQueryData queryData,
}) async {
  final moviesRepo = ref.watch(repoRepositoryProvider);

  return moviesRepo.searchRepo(
    queryData: queryData,
  );
}
