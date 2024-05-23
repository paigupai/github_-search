import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_search/features/search/data/repo_repository.dart';
import 'package:github_search/features/search/domain/readme_query_data.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
import 'package:github_search/utils/logger.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:url_launcher/url_launcher.dart';

/// repo詳細page
class RepoDetailsPage extends StatelessWidget {
  const RepoDetailsPage({super.key, required this.repo});

  final Repo repo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          repo.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'avatar-${repo.fullName}',
              child: SizedBox(
                height: 120,
                child: CachedNetworkImage(imageUrl: repo.owner.avatarUrl),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            _buildRepoDetails(context),
            _buildReadme(repo),
          ],
        ),
      ),
    );
  }

  // リポジトリ詳細
  Widget _buildRepoDetails(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {
              try {
                final url = Uri.parse(repo.htmlUrl);
                await launchUrl(url);
              } catch (e) {
                logger.e('Failed to launch url: $e');
              }
            },
            child: Text(repo.fullName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    decorationColor: Colors.blue,
                    color: Colors.blue,
                    decoration: TextDecoration.underline)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(repo.description ?? '',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                Icons.code,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                '${repo.language}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReadme(Repo repo) {
    return Consumer(builder: (context, ref, _) {
      final responseAsync = ref.watch(
        fetchReadmeProvider(
            queryData: ReadmeQueryData(
          owner: repo.owner.login,
          repo: repo.name,
          branch: repo.defaultBranch,
        )),
      );
      return responseAsync.when(data: (response) {
        // markdownデータをbase64デコードしてutf8デコード
        // \nを削除
        final markdownData =
            utf8.decode(base64.decode(response.content.replaceAll('\n', '')));

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: markdownData,
            selectable: true,
            onTapLink: (_, href, __) async {
              logger.i('Tapped link: href = $href');
              if (href != null) {
                try {
                  final url = Uri.parse(href);
                  await launchUrl(url);
                } catch (e) {
                  logger.e('Failed to launch url: $e');
                }
              }
            },
            extensionSet: md.ExtensionSet(
              md.ExtensionSet.gitHubFlavored.blockSyntaxes,
              [
                md.EmojiSyntax(),
                ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes,
              ],
            ),
            imageBuilder: (uri, _, __) => CachedNetworkImage(
              imageUrl: uri.toString(),
              errorWidget: (_, url, dynamic __) => SvgPicture.network(url),
            ),
          ),
        );
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
              'error: ${error.toString()}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        );
      });
    });
  }
}
