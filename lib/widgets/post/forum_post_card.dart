import 'package:flutter/material.dart';

import '../../models/forum_post.dart';
import 'post_action_button.dart';
import 'post_author_row.dart';
import '../common/topic_badge.dart';

class ForumPostCard extends StatelessWidget {
  const ForumPostCard({super.key, required this.post});

  final ForumPost post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TopicBadge(label: post.topic),
                const Spacer(),
                Text(
                  post.publishedAt,
                  style: const TextStyle(
                    color: Color(0xFF94A3B8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              post.question,
              style: const TextStyle(
                color: Color(0xFF111827),
                fontSize: 18,
                fontWeight: FontWeight.w800,
                height: 1.35,
              ),
            ),
            const SizedBox(height: 10),
            PostAuthorRow(
              name: post.authorName,
              title: post.authorTitle,
              avatarText: post.avatarText,
            ),
            const SizedBox(height: 12),
            Text(
              post.answer,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xFF334155),
                fontSize: 15,
                height: 1.55,
              ),
            ),
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                PostActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  label: '${post.votes} 赞同',
                  highlighted: true,
                ),
                PostActionButton(
                  icon: Icons.mode_comment_outlined,
                  label: '${post.comments} 评论',
                ),
                PostActionButton(
                  icon: Icons.visibility_outlined,
                  label: '${post.reads} 浏览',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
