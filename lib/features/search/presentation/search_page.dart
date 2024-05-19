import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/features/search/presentation/repo_search_bar.dart';
import 'package:github_search/features/search/presentation/search_query_notifier.dart';
import 'package:github_search/utils/logger.dart';

///
/// 検索page
///
class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  static const pageSize = 30;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(searchQueryNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('リポジトリ検索')),
      ),
      body: Column(
        children: [
          const RepoSearchBar(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                logger.i('SearchPage onRefresh');
              },
              child: ListView.builder(
                  key: ValueKey(query),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
