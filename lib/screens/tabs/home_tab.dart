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
  // 当前选中的热门话题下标，只影响话题 Chip 的选中样式。
  // 现在还没有按话题过滤帖子，后续可以用这个值筛选 forumPosts。
  int _selectedTopicIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        // 首页顶部搜索入口，后续可以接搜索页面或关键词联想。
        const AppSearchBar(),
        const SizedBox(height: 16),
        // 横向话题栏用于快速筛选信息流主题。
        const SectionHeader(title: '热门话题', actionText: '全部'),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // featuredTopics 来自 forum_seed_data.dart。
              // 这里根据 index 逐个取出话题文本，生成横向滚动的 TopicChip。
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
            // 用 mock 话题数组长度决定要渲染多少个 Chip。
            itemCount: featuredTopics.length,
          ),
        ),
        const SizedBox(height: 18),
        // 推荐讨论列表目前使用本地 mock 数据，后续可替换为接口返回。
        const SectionHeader(title: '推荐讨论', actionText: '换一批'),
        const SizedBox(height: 10),
        // forumPosts 是本地 mock 帖子数组。
        // map 会把每条 ForumPost 数据转换成一个 ForumPostCard 卡片。
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
