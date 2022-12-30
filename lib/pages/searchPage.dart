// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PageArguments {
  final String title;
  PageArguments(this.title);
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as PageArguments;
    print(args);
    print(args.title);
    // print(args['title']);
    return Scaffold(
      // widget 承接父类 state this 上的数据
      appBar: AppBar(title: Text('args.title')),
      body: Center(
          child: Column(
        children: [
          const Text('我是搜索页面'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('返回到上一页'))
        ],
      )),
    );
  }
}
