# 2025年 Flutter研修

## 事前準備

研修の前に、以下をインストールしてください

- [mise](https://mise.jdx.dev/getting-started.html)
    - 各ランタイムのバージョンを管理するツールです
    - 利用したくない場合は、[`mise.toml`](./mise.toml) を見てそれぞれインストールしてください
- [Xcode](https://developer.apple.com/xcode/resources/) 16.3
    - ダウンロードにはApple IDが必要です
    - [xcodes](https://github.com/XcodesOrg/xcodes) を使ってインストールするのがおすすめです
- [Android Studio](https://developer.android.com/studio) 2024.3

### セットアップ

```zsh
git clone https://github.com/mixigroup/2025BeginnerTrainingFlutter.git
cd 2025BeginnerTrainingFlutter
mise install
```

または、

```zsh
./setup.sh
```

起動したことがなければ、XcodeとAndroid Studioを起動しておくと良いでしょう

`flutter doctor` を実行して、以下のように表示されればOKです (上記で指定していないツールのバージョンは違っても大丈夫です)

```zsh
❯ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.29.3, on macOS 15.4 24E248 darwin-arm64, locale ja-JP)
[✓] Android toolchain - develop for Android devices (Android SDK version 35.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 16.3)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2024.3)
[✓] VS Code (version 1.99.3)
[✓] Connected device (3 available)
[✓] Network resources

• No issues found!
```

### テキストエディタ

使用するテキストエディタは何でも良いですが、[Visual Studio Code](https://code.visualstudio.com/)を推奨しています
