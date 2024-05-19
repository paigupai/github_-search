import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/features/search/presentation/search/search_query_notifier.dart';

/// リポジトリ検索バー
class RepoSearchBar extends ConsumerStatefulWidget {
  const RepoSearchBar({super.key});

  @override
  ConsumerState<RepoSearchBar> createState() => _RepoSearchBarState();
}

class _RepoSearchBarState extends ConsumerState<RepoSearchBar> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context)!;
    return Container(
      height: 80,
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          prefix: const Icon(Icons.search),
          suffix: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              _controller.clear();
              ref.read(searchQueryNotifierProvider.notifier).setQuery('');
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          labelText: l10n.repo_search,
        ),
        onEditingComplete: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onChanged: (text) =>
            ref.read(searchQueryNotifierProvider.notifier).setQuery(text),
      ),
    );
  }
}
