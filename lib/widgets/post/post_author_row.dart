import 'package:flutter/material.dart';

class PostAuthorRow extends StatelessWidget {
  const PostAuthorRow({
    super.key,
    required this.name,
    required this.title,
    required this.avatarText,
  });

  final String name;
  final String title;
  final String avatarText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: const Color(0xFFEAF2FF),
          child: Text(
            avatarText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(
                    color: Color(0xFF111827),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' · $title',
                  style: const TextStyle(color: Color(0xFF64748B)),
                ),
              ],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        TextButton(onPressed: () {}, child: const Text('关注')),
      ],
    );
  }
}
