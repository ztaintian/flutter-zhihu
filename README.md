# 知问 Flutter 论坛 App

一个使用 Flutter 构建的类知乎论坛 App 原型，包含首页信息流、发现、收藏、我的四个页面。当前版本使用本地 mock 数据，重点展示页面结构、组件拆分和基础交互。

## 功能

- 首页：搜索入口、热门话题、推荐讨论列表、提问按钮。
- 发现：话题入口、今日热榜、圆桌讨论、新知专栏。
- 收藏：收藏夹列表、最近收藏的问题卡片。
- 我的：个人资料、数据统计、浏览历史、草稿、关注入口。

## 目录结构

```text
lib/
  data/              mock 数据
  models/            数据模型
  screens/           页面和底部 Tab
  widgets/
    common/          通用组件
    discover/        发现页组件
    navigation/      底部导航组件
    post/            问题卡片相关组件
    profile/         我的页组件
    saved/           收藏页组件
```

## 运行

先确认模拟器已启动，然后在项目根目录运行：

```powershell
flutter pub get
flutter run -d emulator-5554
```

开发时常用热更新命令：

```text
r  热重载，适合改 UI 样式和文案
R  热重启，适合改初始状态、入口和全局配置
q  退出运行
```

## 验证

```powershell
dart format lib test
flutter test
```
