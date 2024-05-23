import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/features/menu/presentation/component/rounded_container.dart';
import 'package:github_search/utils/language_provider.dart';

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
                Divider(
                  indent: 10,
                  color: Theme.of(context).dividerColor,
                ),
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
      final language = Localizations.localeOf(context).languageCode;
      final languageCode = LanguageCode.fromString(language);
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
}
