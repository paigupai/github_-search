import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flex_scheme_sate.freezed.dart';

/// テーマスSate
@freezed
class FlexSchemeSate with _$FlexSchemeSate {
  const factory FlexSchemeSate({
    required ThemeMode themeMode,
    required FlexScheme flexScheme,
    required ThemeData lightTheme,
    required ThemeData darkTheme,
  }) = _FlexSchemeSate;
}

// カスタムテーマ
final customLightTheme = FlexThemeData.light(
  scheme: FlexScheme.deepBlue,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
);

final customDarkTheme = FlexThemeData.dark(
  scheme: FlexScheme.deepBlue,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
);
