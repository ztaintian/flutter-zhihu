import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E8EF)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Color(0xFF64748B)),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              '搜索问题、话题或用户',
              style: TextStyle(color: Color(0xFF64748B), fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
