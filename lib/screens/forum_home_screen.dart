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
  int _selectedNavIndex = 0;

  static const _titles = ['知问', '发现', '收藏', '我的'];
  static const _tabs = [HomeTab(), DiscoverTab(), SavedTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
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
        child: IndexedStack(index: _selectedNavIndex, children: _tabs),
      ),
      floatingActionButton: _selectedNavIndex == 0
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.edit_square),
              label: const Text('提问'),
            )
          : null,
      bottomNavigationBar: ForumBottomNav(
        currentIndex: _selectedNavIndex,
        onTap: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
        },
      ),
    );
  }
}
