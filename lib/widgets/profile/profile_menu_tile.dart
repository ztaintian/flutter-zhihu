import 'package:flutter/material.dart';

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  // 左侧图标，用于快速识别菜单类型。
  final IconData icon;

  // 菜单主标题。
  final String title;

  // 菜单说明文案，补充入口用途或状态。
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      // ListTile 适合这种“图标 + 标题 + 说明 + 右箭头”的设置项布局。
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        // 当前只保留点击入口，后续可以跳转到浏览历史、草稿等二级页面。
        onTap: () {},
      ),
    );
  }
}
