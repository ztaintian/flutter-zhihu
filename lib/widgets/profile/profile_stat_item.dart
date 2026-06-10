import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';

class ProfileStatItem extends StatelessWidget {
  const ProfileStatItem({super.key, required this.stat});

  final ProfileStat stat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          stat.value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 3),
        Text(stat.label, style: const TextStyle(color: Color(0xFF64748B))),
      ],
    );
  }
}
