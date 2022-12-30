// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // widget 承接父类 state this 上的数据
      appBar: AppBar(title: const Text('flutter home page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/news');
              },
              child: const Text('跳转到 news'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/search', arguments: {'title': "hi"});
                },
                child: const Text('跳转到 search')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/dialog');
                },
                child: const Text('跳转到 my dialog')),
          ],
        ),
      ),
    );
  }
}
