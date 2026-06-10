import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('forum home renders core sections', (WidgetTester tester) async {
    await tester.pumpWidget(const ZhihuForumApp());

    expect(find.text('知问'), findsOneWidget);
    expect(find.text('热门话题'), findsOneWidget);
    expect(find.text('推荐讨论'), findsOneWidget);
    expect(find.text('Flutter 新项目应该先搭哪些基础结构？'), findsOneWidget);
    expect(find.byIcon(Icons.edit_square), findsOneWidget);

    await tester.tap(find.text('发现'));
    await tester.pumpAndSettle();
    expect(find.text('今日热榜'), findsOneWidget);

    await tester.tap(find.text('收藏'));
    await tester.pumpAndSettle();
    expect(find.text('Flutter 开发资料'), findsOneWidget);

    await tester.tap(find.text('我的'));
    await tester.pumpAndSettle();
    expect(find.text('开发者同学'), findsOneWidget);
  });
}
