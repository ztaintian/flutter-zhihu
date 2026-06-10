import 'package:flutter/material.dart';

class TopicChip extends StatelessWidget {
  const TopicChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  // 展示的话题文本。
  final String label;

  // 是否为当前选中的话题，控制颜色和边框样式。
  final bool selected;

  // 点击话题时通知页面层更新选中状态。
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ChoiceChip(
      // ChoiceChip 适合表达“多个选项里当前选中一个”的场景。
      selected: selected,
      label: Text(label),
      // onSelected 会传回 bool，但页面只需要知道“被点了”，所以转调 onTap。
      onSelected: (_) => onTap(),
      showCheckmark: false,
      selectedColor: colorScheme.primary,
      backgroundColor: Colors.white,
      side: BorderSide(
        color: selected ? colorScheme.primary : const Color(0xFFE3E8EF),
      ),
      labelStyle: TextStyle(
        color: selected ? Colors.white : const Color(0xFF334155),
        fontWeight: FontWeight.w700,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
