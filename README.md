# LifecycleStudyApp
ライフサイクルを勉強するためのリポジトリです。

## ScenePhase
SwiftUI で構成されているアプリの、ライフサイクル状態を表す列挙型。

| 種類 | 状態 |
| ---- | ---- |
| `background` | 現在、この Scene は UI に表示されていない状態 |
| `inactive` | Scene はフォアグラウンドにあるが、処理を一時停止する必要がある状態 |
| `active` | Scene が最前面にあり、ユーザーイベントを受け取れる状態 |

### Sceneとは
Scene は、ユーザーに表示したいビュー階層を格納するコンテナとして機能している。
OS によってライフサイクルが管理されている。

## 参考資料

- [Managing your app’s life cycle](https://developer.apple.com/documentation/uikit/managing-your-app-s-life-cycle)
- [5 States of an iOS App Lifecycle](https://clutch.co/resources/ios-app-lifecycle)
- [ScenePhase](https://developer.apple.com/documentation/swiftui/scenephase)