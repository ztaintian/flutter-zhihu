import 'package:flutter/material.dart';

import '../../data/forum_seed_data.dart';

class SavedCollectionCard extends StatelessWidget {
  const SavedCollectionCard({super.key, required this.collection});

  final SavedCollection collection;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: const Color(0xFFF1F5F9),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.folder_outlined, color: Color(0xFF475569)),
        ),
        title: Text(
          collection.title,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        subtitle: Text('${collection.count} 条内容 · ${collection.updatedAt}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
