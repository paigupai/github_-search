import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/features/search/data/repo_repository.dart';
import 'package:github_search/features/search/domain/repo_query_data.dart';
import 'package:github_search/features/search/presentation/search/repo_list_title.dart';
import 'package:github_search/features/search/presentation/search/repo_search_bar.dart';
import 'package:github_search/features/search/presentation/search/search_query_notifier.dart';
import 'package:github_search/utils/logger.dart';

/// 検索page
class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  static const pageSize = 30;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 検索クエリーを取得
    final query = ref.watch(searchQueryNotifierProvider);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'リポジトリ検索',
            style: Theme.of(context).textTheme.titleMedium,
          )),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                pinned: true,
                collapsedHeight: 85,
                flexibleSpace: const RepoSearchBar(),
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
            ];
          },
          body: Builder(builder: (context) {
            // 検索ワードが空の場合
            if (query.isEmpty) {
              return emptyView(context);
            }
            // 検索結果を取得
            final responseAsync = ref.watch(
              fetchRepoProvider(
                  queryData: RepoQueryData(query: query, page: 1)),
            );
            final totalResults = responseAsync.valueOrNull?.totalCount ?? 0;

            return Column(
              children: [
                // 検索結果がある場合
                if (responseAsync.hasValue)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '検索結果: $totalResults 件',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                // errorの場合
                if (responseAsync.hasError)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'エラーが発生しました error: ${responseAsync.error.toString()}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      logger.i('SearchPage onRefresh');
                      ref.invalidate(fetchRepoProvider);
                      try {
                        await ref.read(
                          fetchRepoProvider(
                                  queryData:
                                      RepoQueryData(query: query, page: 1))
                              .future,
                        );
                      } catch (e) {
                        logger.w('SearchPage onRefresh error: $e');
                      }
                    },
                    child: ListView.separated(
                      key: ValueKey(query),
                      itemCount: totalResults,
                      itemBuilder: (context, index) {
                        final page = index ~/ pageSize + 1;
                        final indexInPage = index % pageSize;
                        final responseAsync = ref.watch(
                          fetchRepoProvider(
                              queryData:
                                  RepoQueryData(query: query, page: page)),
                        );
                        return responseAsync.when(data: (response) {
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RepoListTitle(
                                repo: response.items[indexInPage],
                              ));
                        }, loading: () {
                          return const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }, error: (error, stackTrace) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child:
                                  Text('エラーが発生しました error: ${error.toString()}'),
                            ),
                          );
                        });
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          indent: 16,
                          endIndent: 16,
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  // 検索ワードが空の場合
  Widget emptyView(BuildContext context) {
    return Center(
      child:
          Text('検索ワードを入力してください', style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
