import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';
import '../../widgets/common/section_header.dart';
import '../../widgets/profile/profile_menu_tile.dart';
import '../../widgets/profile/profile_stat_item.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        // 个人资料卡片展示用户身份和核心数据。
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: const Text(
                        '开',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '开发者同学',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '正在搭建一个论坛 App',
                            style: TextStyle(color: Color(0xFF64748B)),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      tooltip: '编辑资料',
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  // profileStats 是 mock 统计数组。
                  // 每个统计项用 Expanded 平分一行宽度，保证三个数字对齐展示。
                  children: profileStats
                      .map(
                        (stat) => Expanded(child: ProfileStatItem(stat: stat)),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 18),
        // 我的工具入口后续可以扩展为二级页面。
        const SectionHeader(title: '我的工具', actionText: '设置'),
        const SizedBox(height: 10),
        const ProfileMenuTile(
          icon: Icons.history,
          title: '浏览历史',
          subtitle: '看过的问题和回答',
        ),
        const ProfileMenuTile(
          icon: Icons.article_outlined,
          title: '我的草稿',
          subtitle: '2 篇回答待继续编辑',
        ),
        const ProfileMenuTile(
          icon: Icons.people_outline,
          title: '关注的人',
          subtitle: '查看创作者动态',
        ),
      ],
    );
  }
}
