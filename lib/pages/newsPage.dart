// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // widget 承接父类 state this 上的数据
      appBar: AppBar(title: const Text('NEWS')),
      body: Center(
          child: Column(
        children: [
          const Text('NewsPage'),
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
