import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:github_search/utils/flex_scheme_sate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class FlexSchemeNotifier extends _$FlexSchemeNotifier {
  @override
  FlexSchemeSate build() {
    return FlexSchemeSate(
      themeMode: ThemeMode.light,
      flexScheme: FlexScheme.custom,
      lightTheme: customLightTheme,
      darkTheme: customDarkTheme,
    );
  }

  // テーマモード
  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  // テーマ
  void setFlexScheme(FlexScheme flexScheme) {
    if (flexScheme == FlexScheme.custom) {
      state = state.copyWith(
        flexScheme: flexScheme,
        lightTheme: customLightTheme,
        darkTheme: customDarkTheme,
      );
      return;
    }
    state = state.copyWith(
      flexScheme: flexScheme,
      lightTheme: FlexThemeData.light(scheme: flexScheme),
      darkTheme: FlexThemeData.dark(scheme: flexScheme),
    );
  }
}
