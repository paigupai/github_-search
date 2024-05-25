import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/search/data/repo_repository.dart';
import 'package:github_search/features/search/domain/fetch_readme_response.dart';
import 'package:github_search/features/search/domain/readme_query_data.dart';
import 'package:github_search/features/search/domain/repo_query_data.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
import 'package:github_search/utils/dio_provider.dart';
import 'package:mockito/mockito.dart';

import '../mock/mock_generator.mocks.dart';
import '../test_config.dart';
import '../test_util.dart';

void main() {
  group("リポジトリリポジトリのUnit Test", () {
    //テスト前に実行
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
    });

    test("リポジトリ検索、成功する場合", () async {
      when(mockDio.getUri(
        argThat(predicate<Uri>((uri) => uri.path == '/search/repositories')),
      )).thenAnswer(
        (_) async {
          return Response(
            data: jsonDecode(searchReposResponseJson),
            statusCode: 200,
            requestOptions: RequestOptions(path: '/search/repositories'),
          );
        },
      );

      final container = createContainer(
        overrides: [
          dioProvider.overrideWithValue(mockDio),
        ],
      );

      expect(
          container.read(fetchRepoProvider(
              queryData: RepoQueryData(query: 'flutter', page: 1))),
          const AsyncLoading<SearchReposResponse>());

      expect(
          container
              .read(fetchRepoProvider(
                  queryData: RepoQueryData(query: 'flutter', page: 1)))
              .isLoading,
          true);

      final response = await container.read(
          fetchRepoProvider(queryData: RepoQueryData(query: 'flutter', page: 1))
              .future);

      final expected =
          SearchReposResponse.fromJson(jsonDecode(searchReposResponseJson));

      expect(response.totalCount == expected.totalCount, true);
      expect(response.items.length == expected.items.length, true);
      expect(response.items.first.name == expected.items.first.name, true);
    });

    test("リポジトリ検索、失敗する場合", () async {
      when(mockDio.getUri(
        argThat(predicate<Uri>((uri) => uri.path == '/search/repositories')),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/search/repositories'),
        response: Response(
          statusCode: 400,
          requestOptions: RequestOptions(path: '/search/repositories'),
        ),
      ));

      final container = createContainer(
        overrides: [
          dioProvider.overrideWithValue(mockDio),
        ],
      );

      expect(
          container.read(fetchRepoProvider(
              queryData: RepoQueryData(query: 'flutter', page: 1))),
          const AsyncLoading<SearchReposResponse>());

      expect(
          container
              .read(fetchRepoProvider(
                  queryData: RepoQueryData(query: 'flutter', page: 1)))
              .isLoading,
          true);

      await expectLater(
          container.read(fetchRepoProvider(
                  queryData: RepoQueryData(query: 'flutter', page: 1))
              .future),
          throwsA(isA<DioException>()));

      expect(
          container
              .read(fetchRepoProvider(
                  queryData: RepoQueryData(query: 'flutter', page: 1)))
              .hasError,
          true);
    });
  });

  group("readme取得のUnit Test", () {
    //テスト前に実行
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
    });

    test("readme取得、成功する場合", () async {
      when(mockDio.getUri(
        argThat(predicate<Uri>(
            (uri) => uri.path == '/repos/flutter/flutter/readme')),
      )).thenAnswer(
        (_) async {
          return Response(
            data: jsonDecode(fetchReadmeResponseJson),
            statusCode: 200,
            requestOptions:
                RequestOptions(path: '/repos/flutter/flutter/readme'),
          );
        },
      );

      final container = createContainer(
        overrides: [
          dioProvider.overrideWithValue(mockDio),
        ],
      );

      expect(
          container.read(fetchReadmeProvider(
              queryData: ReadmeQueryData(
                  owner: 'flutter', repo: 'flutter', branch: 'master'))),
          const AsyncLoading<FetchReadmeResponse>());

      expect(
          container
              .read(fetchReadmeProvider(
                  queryData: ReadmeQueryData(
                      owner: 'flutter', repo: 'flutter', branch: 'master')))
              .isLoading,
          true);

      final response = await container.read(fetchReadmeProvider(
              queryData: ReadmeQueryData(
                  owner: 'flutter', repo: 'flutter', branch: 'master'))
          .future);

      final expected =
          FetchReadmeResponse.fromJson(jsonDecode(fetchReadmeResponseJson));

      expect(response.content == expected.content, true);
    });

    test("readme取得、失敗する場合", () async {
      when(mockDio.getUri(
        argThat(predicate<Uri>(
            (uri) => uri.path == '/repos/flutter/flutter/readme')),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/repos/flutter/flutter/readme'),
        response: Response(
          statusCode: 400,
          requestOptions: RequestOptions(path: '/repos/flutter/flutter/readme'),
        ),
      ));

      final container = createContainer(
        overrides: [
          dioProvider.overrideWithValue(mockDio),
        ],
      );

      expect(
          container.read(fetchReadmeProvider(
              queryData: ReadmeQueryData(
                  owner: 'flutter', repo: 'flutter', branch: 'master'))),
          const AsyncLoading<FetchReadmeResponse>());

      expect(
          container
              .read(fetchReadmeProvider(
                  queryData: ReadmeQueryData(
                      owner: 'flutter', repo: 'flutter', branch: 'master')))
              .isLoading,
          true);

      await expectLater(
          container.read(fetchReadmeProvider(
                  queryData: ReadmeQueryData(
                      owner: 'flutter', repo: 'flutter', branch: 'master'))
              .future),
          throwsA(isA<DioException>()));

      expect(
          container
              .read(fetchReadmeProvider(
                  queryData: ReadmeQueryData(
                      owner: 'flutter', repo: 'flutter', branch: 'master')))
              .hasError,
          true);
    });
  });
}
