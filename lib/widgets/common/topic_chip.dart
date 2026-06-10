import 'package:flutter/material.dart';

class TopicChip extends StatelessWidget {
  const TopicChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ChoiceChip(
      selected: selected,
      label: Text(label),
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
