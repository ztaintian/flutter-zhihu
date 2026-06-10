import 'package:flutter/material.dart';

class PostAuthorRow extends StatelessWidget {
  const PostAuthorRow({
    super.key,
    required this.name,
    required this.title,
    required this.avatarText,
  });

  // 作者昵称。
  final String name;

  // 作者身份说明，例如“移动端工程师”。
  final String title;

  // 头像里的单字占位，避免 mock 阶段依赖网络图片。
  final String avatarText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 使用文字头像代替图片头像，方便本地 mock 和离线运行。
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
          // Text.rich 把昵称和身份拼在一行里，同时使用不同颜色强调层级。
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
        // 关注按钮目前只展示入口，后续可接关注状态和接口。
        TextButton(onPressed: () {}, child: const Text('关注')),
      ],
    );
  }
}
