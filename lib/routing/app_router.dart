import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/features/search/domain/search_repos_response.dart';
import 'package:github_search/features/search/presentation/repo_details/repo_details_page.dart';
import 'package:github_search/features/search/presentation/search/search_page.dart';
import 'package:github_search/features/settings/presentation/settings_page.dart';
import 'package:github_search/routing/scaffold_with_nested_navigation.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  search,
  searchDetails,
  settings,
}

// navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final _favoritesNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'settings');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/search',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _searchNavigatorKey,
            routes: [
              // Products
              GoRoute(
                path: '/search',
                name: AppRoute.search.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const SearchPage(),
                ),
                routes: [
                  GoRoute(
                    path: 'repo_details',
                    name: AppRoute.searchDetails.name,
                    pageBuilder: (context, state) {
                      final repo = state.extra as Repo;
                      return MaterialPage(
                        key: state.pageKey,
                        child: RepoDetailsPage(repo: repo),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _favoritesNavigatorKey,
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/settings',
                name: AppRoute.settings.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const SettingsPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
