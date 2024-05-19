import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_query_notifier.g.dart';

/// 検索クエリーnotifier
@riverpod
class SearchQueryNotifier extends _$SearchQueryNotifier {
  Timer? _debounceTimer;

  @override
  String build() {
    return '';
  }

  // queryをセットする
  void setQuery(String query) {
    if (_debounceTimer != null) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(const Duration(seconds: 1), () {
      state = query;
    });
  }
}
