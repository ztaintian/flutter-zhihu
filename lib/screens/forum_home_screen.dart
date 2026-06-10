import 'package:flutter/material.dart';

import '../widgets/navigation/forum_bottom_nav.dart';
import 'tabs/discover_tab.dart';
import 'tabs/home_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/saved_tab.dart';

class ForumHomeScreen extends StatefulWidget {
  const ForumHomeScreen({super.key});

  @override
  State<ForumHomeScreen> createState() => _ForumHomeScreenState();
}

class _ForumHomeScreenState extends State<ForumHomeScreen> {
  // 当前选中的底部导航下标。
  // NavigationBar 点击后会把 0/1/2/3 传回来，这里保存这个值。
  int _selectedNavIndex = 0;

  // 底部导航切换时同步更新顶部标题。
  // 下标顺序必须和底部导航 destinations、_tabs 页面数组保持一致。
  static const _titles = ['知问', '发现', '收藏', '我的'];

  // 使用 IndexedStack 保留每个 Tab 的滚动位置和局部状态。
  // 例如首页话题选中态、每个页面的滚动位置，在切换 Tab 后不会被销毁。
  static const _tabs = [HomeTab(), DiscoverTab(), SavedTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
        // 根据当前导航下标从 _titles 里取标题。
        // 例如 _selectedNavIndex = 1 时，标题显示“发现”。
        title: Text(
          _titles[_selectedNavIndex],
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            tooltip: '通知',
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          IconButton(
            tooltip: '私信',
            onPressed: () {},
            icon: const Icon(Icons.mail_outline_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        // IndexedStack 一次性持有所有页面，只显示 index 对应的那个。
        // 这里的 index 就是底部导航当前选中的 _selectedNavIndex。
        child: IndexedStack(index: _selectedNavIndex, children: _tabs),
      ),
      // 首页保留提问入口，其他页面暂时聚焦浏览和管理内容。
      floatingActionButton: _selectedNavIndex == 0
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.edit_square),
              label: const Text('提问'),
            )
          : null,
      bottomNavigationBar: ForumBottomNav(
        currentIndex: _selectedNavIndex,
        // ForumBottomNav 只负责展示导航和把点击下标回传。
        // 真正决定“进入哪个页面”的状态更新放在外层页面里。
        onTap: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
        },
      ),
    );
  }
}
