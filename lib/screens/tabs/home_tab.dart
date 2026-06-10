import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';
import '../../widgets/common/app_search_bar.dart';
import '../../widgets/common/section_header.dart';
import '../../widgets/common/topic_chip.dart';
import '../../widgets/post/forum_post_card.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _selectedTopicIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        const AppSearchBar(),
        const SizedBox(height: 16),
        const SectionHeader(title: '热门话题', actionText: '全部'),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return TopicChip(
                label: featuredTopics[index],
                selected: _selectedTopicIndex == index,
                onTap: () {
                  setState(() {
                    _selectedTopicIndex = index;
                  });
                },
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemCount: featuredTopics.length,
          ),
        ),
        const SizedBox(height: 18),
        const SectionHeader(title: '推荐讨论', actionText: '换一批'),
        const SizedBox(height: 10),
        ...forumPosts.map(
          (post) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ForumPostCard(post: post),
          ),
        ),
      ],
    );
  }
}
