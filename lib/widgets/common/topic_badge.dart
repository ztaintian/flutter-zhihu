import 'package:flutter/material.dart';

class TopicBadge extends StatelessWidget {
  const TopicBadge({super.key, required this.label});

  // 帖子所属的话题名称，由 ForumPostCard 从 ForumPost.topic 传入。
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      // TopicBadge 用在信息流卡片内部，视觉上比可点击的 TopicChip 更轻。
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF475569),
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
