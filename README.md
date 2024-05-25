# GitHubの検索アプリ

![gif](https://github.com/paigupai/github_search/blob/main/image/%E8%A8%BC%E8%B7%A1.gif)  

# 開発環境
以下の開発環境で動作確認を行っています。
```
[✓] Flutter (Channel stable, 3.19.6, on macOS 14.4.1 23E224 darwin-arm64, locale ja-JP)
[✓] Android toolchain - develop for Android devices (Android SDK version 35.0.0-rc3)
[✓] Xcode - develop for iOS and macOS (Xcode 15.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2023.3)
[✓] VS Code (version 1.89.1)
[✓] Connected device (3 available)
[✓] Network resources

Dart SDK version: 3.3.4 (stable) (Tue Apr 16 19:56:12 2024 +0000) on "macos_arm64"
```

# アプリの起動方法
### コード生成とパッケージの取得
以下のコマンドでコードの生成とパッケージの取得を行ってください。

```
# コード生成
flutter gen-l10n
# パッケージの取得
flutter pub get
```
### 環境変数の設定

ビルドする前に環境変数を設定するためにdev.envという名前のファイルを作成します。
以下のように書いてください。

```
# DevicePreviewの有効化
ENABLED_DEVICE_PREVIEW=false
# GitHubのトークン
GITHUB_TOKEN="hoge"
```
### ビルド
以下のコマンドを実行してアプリをビルドします。
```
flutter run --dart-define-from-file=dev.env
```
### コードの自動生成
```
flutter pub run build_runner build -d
```

# 技術スタック

以下の技術を使って開発した。

| カテゴリ       | 説明                            |
|------------|-------------------------------|
| ローカライズ      | intl(日本語、英語) |
| 状態管理と DI   | riverpod |
| データモデル     | freezed |
| API クライアント | dio |
| 画面遷移       | go_router |
| markdown関連 | flutter_markdown、markdown |
| 画像cache | cached_network_image |
| テーマ設定       | flex_color_scheme |
| アニメアニメーション | simple_animations |
| Flavor設定       | --dart-define-from-file |
| プレビュー       | device_preview |
| CI       | GitHub Actions |
| テスト | mocktail |

### ディレクトリ構成
```
├── features                              機能単位のディレクトリ
│   └── <関心こと>
│       ├── menu                          メニュー関連
│       └── search             　　　　　　 検索機能
│           ├── data                      データ取得用のリポジトリ
│           ├── domain                    データモデルを定義
│           └── presentation              UI関連のWidgetなど
├── l10n                                  ローカライズ用ディレクトリ
├── routing                           　　 ルーティング設定
└── utils                                 共通のユーティリティ関数等
```

# デプロイ
Web Deloyの検証はこちらのリンクから行えます：
[Web Deloy](https://paigupai.github.io/github_search/)  
🚀 GITHUB_TOKENは公開していないため、Web Deloyではトークンが必要な検索機能を使用できません。
![](https://github.com/paigupai/github_search/blob/main/image/iShot.png)

# 今後の改善予定

- [ ] UI共通化
- [ ] Integration テスト
- [ ] リリースビルド