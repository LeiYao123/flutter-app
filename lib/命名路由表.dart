import 'package:flutter/material.dart';
import './pages/searchPage.dart';
import './pages/newsPage.dart';
import './pages/homePage.dart';

// 命名路由
final routes = {
  '/': (context) => const HomePage(),
  '/news': (context) => const NewsPage(),
  '/search': (context) => const SearchPage(),
};

void main() {
  runApp(
    MaterialApp(
      title: 'my app title',
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/',
      routes: routes,
      // 命名路由传值
      // onGenerateRoute: (RouteSettings settings) {
      //   final String? name = settings.name;
      //   final Function? pageContentBuilder = routes[name];
      //   if (pageContentBuilder != null) {
      //     final Route route;
      //     if (settings.arguments != null) {
      //       route = MaterialPageRoute(
      //           builder: (context) =>
      //               pageContentBuilder(context, settings.arguments));
      //     } else {
      //       route = MaterialPageRoute(
      //           builder: (context) => pageContentBuilder(context));
      //     }
      //     return route;
      //   }
      //   return null;
      // },
    ),
  );
}
