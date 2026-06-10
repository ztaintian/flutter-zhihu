import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 当前搜索栏是静态入口样式。
      // 后续如果要做真实搜索，可以把 Container 换成 TextField 或 GestureDetector。
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E8EF)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          // 搜索图标和占位文案组合成一个轻量搜索入口。
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
