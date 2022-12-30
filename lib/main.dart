import 'package:flutter/material.dart';
import './pages/searchPage.dart';
import './pages/newsPage.dart';
import './pages/homePage.dart';
import './pages/dialog.dart';

// 命名路由
final routes = {
  '/': (context) => const HomePage(),
  '/news': (context) => const NewsPage(),
  '/search': (context) => const SearchPage(),
  '/dialog': (context) => const MyDialogPage(),
};

void main() {
  runApp(
    MaterialApp(
      title: 'my app title',
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/',
      routes: routes,
    ),
  );
}
