import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';

class ProfileStatItem extends StatelessWidget {
  const ProfileStatItem({super.key, required this.stat});

  // 单个个人数据统计项，例如回答数、收藏数、关注者数量。
  final ProfileStat stat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 数值是主要信息，使用更大字号和更重字重。
        Text(
          stat.value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 3),
        // 标签解释数值含义，弱化显示。
        Text(stat.label, style: const TextStyle(color: Color(0xFF64748B))),
      ],
    );
  }
}
