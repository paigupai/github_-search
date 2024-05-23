import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

enum LanguageCode {
  ja,
  en;

  String get code => toString().split('.').last;

  static LanguageCode fromString(String code) {
    switch (code) {
      case 'ja':
        return LanguageCode.ja;
      case 'en':
        return LanguageCode.en;
      default:
        return LanguageCode.ja;
    }
  }
}

/// 言語ロケール
@riverpod
class LanguageLocale extends _$LanguageLocale {
  @override
  LanguageCode build() {
    return LanguageCode.ja;
  }

  void setLanguageCode(LanguageCode code) {
    state = code;
  }
}
