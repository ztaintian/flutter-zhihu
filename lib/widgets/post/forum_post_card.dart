import 'package:flutter/material.dart';

import '../../models/forum_post.dart';
import 'post_action_button.dart';
import 'post_author_row.dart';
import '../common/topic_badge.dart';

class ForumPostCard extends StatelessWidget {
  const ForumPostCard({super.key, required this.post});

  // 页面传入一条帖子数据，卡片内部只负责把这条数据拆成 UI 区块展示。
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
                // 话题徽标展示帖子所属分类。
                TopicBadge(label: post.topic),
                const Spacer(),
                // 发布时间放在右上角，作为辅助信息弱化显示。
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
            // 问题标题是卡片里最重要的信息，所以使用更大的字号和字重。
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
            // 作者信息单独封装成 PostAuthorRow，避免卡片文件承载太多细节。
            PostAuthorRow(
              name: post.authorName,
              title: post.authorTitle,
              avatarText: post.avatarText,
            ),
            const SizedBox(height: 12),
            // 回答摘要限制为 3 行，防止列表卡片过高影响信息流浏览效率。
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
            // 操作区使用 Wrap，窄屏时按钮可以自动换行，避免溢出。
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
