import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
import 'package:github_search/features/search/presentation/component/icon_text_view.dart';
import 'package:go_router/go_router.dart';

/// リポジトlistタイトル
class RepoListTitle extends StatelessWidget {
  const RepoListTitle({super.key, required this.repo});

  final Repo repo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // リポジトリ詳細ページに遷移
        GoRouter.of(context).go('/search/repo_details', extra: repo);
      },
      leading: Hero(
        tag: 'avatar-${repo.fullName}',
        child: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(repo.owner.avatarUrl),
        ),
      ),
      title: Text(
        repo.name,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            repo.fullName,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            repo.description ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconTextView(
                icon: Icons.star,
                text: '${repo.stargazersCount}',
              ),
              const SizedBox(width: 8),
              IconTextView(
                icon: Icons.code,
                text: '${repo.language}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
