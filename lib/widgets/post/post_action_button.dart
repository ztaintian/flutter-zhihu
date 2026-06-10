import 'package:flutter/material.dart';

class PostActionButton extends StatelessWidget {
  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.highlighted = false,
  });

  // 操作按钮左侧图标，例如赞同、评论、浏览。
  final IconData icon;

  // 操作文案，通常由外层把数量拼好后传入。
  final String label;

  // 是否强调显示。当前赞同按钮高亮，评论和浏览为普通样式。
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    // 根据 highlighted 决定前景色和背景色，保持同一个组件可复用。
    final foreground = highlighted
        ? Theme.of(context).colorScheme.primary
        : const Color(0xFF64748B);
    final background = highlighted
        ? const Color(0xFFEAF2FF)
        : const Color(0xFFF1F5F9);

    return Material(
      color: background,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        // InkWell 让按钮保留点击反馈；真实业务可在这里传入外部 onTap。
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 16, color: foreground),
              const SizedBox(width: 5),
              Text(
                label,
                style: TextStyle(
                  color: foreground,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
