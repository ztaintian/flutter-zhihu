import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';
import '../../widgets/common/section_header.dart';
import '../../widgets/post/forum_post_card.dart';
import '../../widgets/saved/saved_collection_card.dart';

class SavedTab extends StatelessWidget {
  const SavedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        // 收藏夹区域用于管理用户按主题整理的内容。
        const SectionHeader(title: '收藏', actionText: '管理'),
        const SizedBox(height: 10),
        // savedCollections 是 mock 收藏夹数组。
        // 每个收藏夹对象交给 SavedCollectionCard 负责展示标题、数量和更新时间。
        ...savedCollections.map(
          (collection) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SavedCollectionCard(collection: collection),
          ),
        ),
        const SizedBox(height: 10),
        // 最近收藏复用回答卡片，保证信息流样式一致。
        const SectionHeader(title: '最近收藏', actionText: '更多'),
        const SizedBox(height: 10),
        // 这里直接复用 forumPosts 中的两条数据作为“最近收藏”示例。
        // 真实业务里可以换成收藏接口返回的帖子列表。
        ForumPostCard(post: forumPosts[1]),
        const SizedBox(height: 12),
        ForumPostCard(post: forumPosts[2]),
      ],
    );
  }
}
