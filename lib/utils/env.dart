/// 環境変数を取得するクラス
class Env {
  /// GitHubのトークン
  static const githubToken = String.fromEnvironment('GITHUB_TOKEN');

  /// DevicePreview表示するかどうか
  static const enabledDevicePreview =
      bool.hasEnvironment("ENABLED_DEVICE_PREVIEW")
          ? bool.fromEnvironment('ENABLED_DEVICE_PREVIEW')
          : false;
}
