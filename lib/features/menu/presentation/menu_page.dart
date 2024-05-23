import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/features/menu/presentation/component/rounded_container.dart';
import 'package:github_search/utils/flex_scheme_sate.dart';
import 'package:github_search/utils/language_provider.dart';
import 'package:github_search/utils/theme_provider.dart';

/// メニューpage
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.menu_title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Column(
        children: [
          settingsView(l10n: l10n, context: context),
        ],
      ),
    );
  }

  // 設定
  Widget settingsView({
    required L10n l10n,
    required BuildContext context,
  }) {
    final divider = Divider(
      indent: 10,
      color: Theme.of(context).dividerColor,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.settings, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(
            height: 8,
          ),
          RoundedContainer(
            child: Column(
              children: [
                languageSetting(),
                divider,
                themeSetting(),
                divider,
                darkModeSetting(),
                divider,
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 多言語設定
  Widget languageSetting() {
    return Consumer(builder: (context, ref, child) {
      final l10n = L10n.of(context)!;
      final languageCode = ref.watch(languageLocaleProvider);
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l10n.language),
            DropdownButton<LanguageCode>(
              value: languageCode,
              borderRadius: BorderRadius.circular(8),
              onChanged: (LanguageCode? newValue) {
                if (newValue != null) {
                  // 言語設定
                  ref
                      .read(languageLocaleProvider.notifier)
                      .setLanguageCode(newValue);
                }
              },
              items: LanguageCode.values
                  .map<DropdownMenuItem<LanguageCode>>((LanguageCode value) {
                return DropdownMenuItem<LanguageCode>(
                  value: value,
                  child: Text(value.code,
                      style: Theme.of(context).textTheme.bodyMedium),
                );
              }).toList(),
            ),
          ],
        ),
      );
    });
  }

  // 多テーマ設定
  Widget themeSetting() {
    return Consumer(builder: (context, ref, child) {
      final l10n = L10n.of(context)!;
      final flexScheme = ref.watch(
          flexSchemeNotifierProvider.select((value) => value.flexScheme));
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l10n.theme),
            DropdownButton<FlexScheme>(
              value: flexScheme,
              borderRadius: BorderRadius.circular(8),
              onChanged: (FlexScheme? newValue) {
                if (newValue != null) {
                  // 設定
                  ref
                      .read(flexSchemeNotifierProvider.notifier)
                      .setFlexScheme(newValue);
                }
              },
              items: FlexScheme.values
                  .map<DropdownMenuItem<FlexScheme>>((FlexScheme value) {
                if (value != FlexScheme.custom) {
                  return DropdownMenuItem<FlexScheme>(
                      value: value,
                      child: Container(
                        width: 25,
                        height: 25,
                        color: FlexColorScheme.light(
                          scheme: value,
                        ).toTheme.primaryColor,
                      ));
                }

                // カスタムテーマの場合
                if (ref.read(flexSchemeNotifierProvider
                        .select((value) => value.themeMode)) ==
                    ThemeMode.light) {
                  return DropdownMenuItem<FlexScheme>(
                    value: value,
                    child: Container(
                      width: 25,
                      height: 25,
                      color: customLightTheme.primaryColor,
                    ),
                  );
                }
                return DropdownMenuItem<FlexScheme>(
                  value: value,
                  child: Container(
                    width: 25,
                    height: 25,
                    color: customDarkTheme.primaryColor,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
    });
  }

  // ダークモード設定
  Widget darkModeSetting() {
    return Consumer(builder: (context, ref, child) {
      final l10n = L10n.of(context)!;
      final themeMode = ref
          .watch(flexSchemeNotifierProvider.select((value) => value.themeMode));
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l10n.dark_mode),
            Switch(
              value: themeMode == ThemeMode.dark,
              onChanged: (bool value) {
                // ダークモード設定
                ref
                    .read(flexSchemeNotifierProvider.notifier)
                    .setThemeMode(value ? ThemeMode.dark : ThemeMode.light);
              },
            ),
          ],
        ),
      );
    });
  }
}
