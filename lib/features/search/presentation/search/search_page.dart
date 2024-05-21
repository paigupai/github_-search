import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    final l10n = L10n.of(context)!;
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
            l10n.search_title,
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
              return emptyView(context, l10n);
            }
            // 検索結果を取得
            final responseAsync = ref.watch(
              fetchRepoProvider(
                  queryData: RepoQueryData(query: query, page: 1)),
            );

            return responseAsync.when(data: (response) {
              final totalCount = response.totalCount;
              return Column(
                children: [
                  // 検索結果
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      l10n.search_results(totalCount.toString()),
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
                        itemCount: totalCount,
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
                                child: Text(
                                  '${l10n.error_message} error: ${error.toString()}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
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
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, error: (error, stackTrace) {
              return Center(
                child: Text('${l10n.error_message} error: ${error.toString()}',
                    style: Theme.of(context).textTheme.bodyMedium),
              );
            });
          }),
        ),
      ),
    );
  }

  // 検索ワードが空の場合
  Widget emptyView(BuildContext context, L10n l10n) {
    return Center(
      child:
          Text(l10n.empty_query, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
