import 'package:flutter/material.dart';

///
/// リポジトリ検索バー
///
class RepoSearchBar extends StatelessWidget {
  const RepoSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Search',
        ),
      ),
    );
  }
}
