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
        const SectionHeader(title: '收藏', actionText: '管理'),
        const SizedBox(height: 10),
        ...savedCollections.map(
          (collection) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SavedCollectionCard(collection: collection),
          ),
        ),
        const SizedBox(height: 10),
        const SectionHeader(title: '最近收藏', actionText: '更多'),
        const SizedBox(height: 10),
        ForumPostCard(post: forumPosts[1]),
        const SizedBox(height: 12),
        ForumPostCard(post: forumPosts[2]),
      ],
    );
  }
}
