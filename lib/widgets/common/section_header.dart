import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.actionText,
  });

  // 区块标题，例如“热门话题”“推荐讨论”“我的工具”。
  final String title;

  // 右侧操作文案，例如“全部”“刷新”“管理”。
  // 当前只展示按钮样式，点击逻辑后续可由外部传入回调扩展。
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const Spacer(),
        // 使用 TextButton 保持轻量操作入口，不抢主标题视觉层级。
        TextButton(onPressed: () {}, child: Text(actionText)),
      ],
    );
  }
}
