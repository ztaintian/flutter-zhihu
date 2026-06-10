import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';
import '../../widgets/common/section_header.dart';
import '../../widgets/common/topic_chip.dart';
import '../../widgets/discover/discovery_card.dart';

class DiscoverTab extends StatelessWidget {
  const DiscoverTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        // 发现页承载探索内容，不和首页推荐流混在一起。
        const SectionHeader(title: '发现', actionText: '刷新'),
        const SizedBox(height: 10),
        // 轻量话题入口，适合后续接热门话题或频道筛选。
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: featuredTopics.take(5).map((topic) {
            // 发现页复用首页话题数据，这里只展示前 5 个作为频道入口。
            // 选中态暂时固定在“AI 应用”，后续可以改为本页自己的状态。
            return TopicChip(
              label: topic,
              selected: topic == 'AI 应用',
              onTap: () {},
            );
          }).toList(),
        ),
        const SizedBox(height: 18),
        // 热榜、圆桌、专栏等模块共用 DiscoveryCard 模板。
        // discoverySections 来自 mock 数据，每个 section 变成一张发现卡片。
        ...discoverySections.map(
          (section) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: DiscoveryCard(section: section),
          ),
        ),
      ],
    );
  }
}
