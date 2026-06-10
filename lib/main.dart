import 'package:flutter/material.dart';

import 'screens/forum_home_screen.dart';

void main() {
  runApp(const ZhihuForumApp());
}

class ZhihuForumApp extends StatelessWidget {
  const ZhihuForumApp({super.key});

  @override
  Widget build(BuildContext context) {
    const brandBlue = Color(0xFF1769E0);

    return MaterialApp(
      title: '知问',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: brandBlue,
          primary: brandBlue,
          surface: const Color(0xFFF6F7F9),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F7F9),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF111827),
          surfaceTintColor: Colors.white,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xFFE8ECF2)),
          ),
        ),
      ),
      home: const ForumHomeScreen(),
    );
  }
}
