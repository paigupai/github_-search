import 'package:flutter/material.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';

/// リポジトlistタイトル
class RepoListTitle extends StatelessWidget {
  const RepoListTitle({super.key, required this.repo});

  final Repo repo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(repo.owner.avatarUrl),
      ),
      title: Text(repo.name),
      subtitle: Text(repo.fullName),
    );
  }
}
