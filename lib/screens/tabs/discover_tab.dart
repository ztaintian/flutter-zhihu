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
        const SectionHeader(title: '发现', actionText: '刷新'),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: featuredTopics.take(5).map((topic) {
            return TopicChip(
              label: topic,
              selected: topic == 'AI 应用',
              onTap: () {},
            );
          }).toList(),
        ),
        const SizedBox(height: 18),
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
