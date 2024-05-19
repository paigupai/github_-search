import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/routing/scaffold_with_nested_navigation.dart';
import 'package:github_search/ui/search/presentation/search_page.dart';
import 'package:github_search/ui/search_details/presentation/search_details_page.dart';
import 'package:github_search/ui/settings/presentation/settings_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  search,
  searchDetails,
  settings,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final _favoritesNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'favorites');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/search',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      // Stateful navigation based on:
      // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
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
                    path: ':id',
                    name: AppRoute.searchDetails.name,
                    pageBuilder: (context, state) {
                      return MaterialPage(
                        key: state.pageKey,
                        child: const SearchDetailsPage(),
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
