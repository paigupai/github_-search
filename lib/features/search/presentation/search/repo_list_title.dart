import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
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
              Icon(
                Icons.star,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                '${repo.stargazersCount}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.code,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                '${repo.language}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.remove_red_eye,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                '${repo.watchersCount}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.call_split,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                '${repo.forksCount}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
