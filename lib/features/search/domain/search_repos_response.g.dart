// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchReposResponseImpl _$$SearchReposResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchReposResponseImpl(
      totalCount: (json['total_count'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Repo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchReposResponseImplToJson(
        _$SearchReposResponseImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };

_$RepoImpl _$$RepoImplFromJson(Map<String, dynamic> json) => _$RepoImpl(
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String?,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      watchersCount: (json['watchers_count'] as num).toInt(),
      language: json['language'] as String?,
      forksCount: (json['forks_count'] as num).toInt(),
      openIssuesCount: (json['open_issues_count'] as num).toInt(),
      defaultBranch: json['default_branch'] as String,
      repoUrl: json['repoUrl'] as String?,
      stargazersUrl: json['stargazersUrl'] as String?,
      watchersUrl: json['watchersUrl'] as String?,
      forksUrl: json['forksUrl'] as String?,
      issuesUrl: json['issuesUrl'] as String?,
    );

Map<String, dynamic> _$$RepoImplToJson(_$RepoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'default_branch': instance.defaultBranch,
      'repoUrl': instance.repoUrl,
      'stargazersUrl': instance.stargazersUrl,
      'watchersUrl': instance.watchersUrl,
      'forksUrl': instance.forksUrl,
      'issuesUrl': instance.issuesUrl,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      ownerUrl: json['ownerUrl'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'ownerUrl': instance.ownerUrl,
    };
