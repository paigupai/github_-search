// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/search/presentation/search/repo_list_title.dart';
import 'package:github_search/main.dart';
import 'package:github_search/utils/dio_provider.dart';
import 'package:github_search/utils/language_provider.dart';
import 'package:mockito/mockito.dart';

import 'mock/mock_generator.mocks.dart';
import 'test_config.dart';

void main() {
  //テスト前に実行
  late MockDio mockDio;
  setUp(() {
    mockDio = MockDio();
  });

  testWidgets('設定メニュー smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('GitHub リポジトリ検索'), findsOneWidget);
    expect(find.text('検索ワードを入力してください'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.menu_outlined));
    await tester.pump();

    // 言語選択
    final languageDropdown = find.byWidgetPredicate(
      (widget) => widget is DropdownButton<LanguageCode>,
    );
    await tester.tap(languageDropdown);
    await tester.pump();

    await tester.tap(find.text('en').first);
    await tester.pump();

    await tester.tap(find.byIcon(Icons.search_outlined));
    await tester.pump();

    expect(find.text('Please enter a search query'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.menu_outlined));
    await tester.pump();

    await tester.tap(languageDropdown);
    await tester.pump();
    await tester.tap(find.text('ja').first);
    await tester.pump();

    await tester.tap(find.byIcon(Icons.search_outlined));
    await tester.pump();

    expect(find.text('検索ワードを入力してください'), findsOneWidget);
  });

  testWidgets('リポジトリ検索　smoke test', (WidgetTester tester) async {
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
    when(mockDio.getUri(
      argThat(
          predicate<Uri>((uri) => uri.path == '/repos/flutter/flutter/readme')),
    )).thenAnswer(
      (_) async {
        return Response(
          data: jsonDecode(fetchReadmeResponseJson),
          statusCode: 200,
          requestOptions: RequestOptions(path: '/repos/flutter/flutter/readme'),
        );
      },
    );

    await tester.pumpWidget(ProviderScope(overrides: [
      dioProvider.overrideWithValue(mockDio),
    ], child: const MyApp()));

    expect(find.text('検索ワードを入力してください'), findsOneWidget);

    // リポジトリ検索
    final searchField = find.byWidgetPredicate(
      (widget) => widget is TextField,
    );
    await tester.enterText(searchField, 'flutter');
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('検索ワードを入力してください'), findsNothing);
    await tester.pump(const Duration(seconds: 1));
    // RepoListTitle
    final repoListTitles = find.byType(RepoListTitle);
    expect(repoListTitles, findsOneWidget);

    // 詳細画面遷移
    await tester.tap(repoListTitles.first);
    await tester.pumpAndSettle();
    // readme解析
    final readme = find.byType(MarkdownBody);
    expect(readme, findsOneWidget);
  });
}
