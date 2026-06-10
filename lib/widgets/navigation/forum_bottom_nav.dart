import 'package:flutter/material.dart';

class ForumBottomNav extends StatelessWidget {
  const ForumBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  // 外层页面传入当前选中的下标，用来控制哪个底部按钮高亮。
  final int currentIndex;

  // 外层页面传入点击回调。
  // 用户点击“首页/发现/收藏/我的”时，NavigationBar 会把对应下标传给它。
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      // selectedIndex 只负责导航栏本身的选中样式。
      // 真正显示哪个页面，由外层 ForumHomeScreen 的 IndexedStack 决定。
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: '首页',
        ),
        NavigationDestination(
          icon: Icon(Icons.explore_outlined),
          selectedIcon: Icon(Icons.explore),
          label: '发现',
        ),
        NavigationDestination(
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.bookmark),
          label: '收藏',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: '我的',
        ),
      ],
    );
  }
}
