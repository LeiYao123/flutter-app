import 'package:flutter/material.dart';
import './pages/searchPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'my app title',
    home: Scaffold(
      appBar: AppBar(title: const Text('练习 flutter widget')),
      body: const MyWidget(),
      drawer: const Drawer(child: Text('左侧边栏')),
      endDrawer: Drawer(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Column(children: const [
            // 使用预设抽屉样式
            UserAccountsDrawerHeader(
              accountName: Text('itying'),
              accountEmail: Text('itying@qq.com'),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage('images/1.jpeg')),
            ),
            Expanded(flex: 1, child: Text('data'))
          ]),
        ),
      ),
    ),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SearchPage();
              }));
            },
            child: const Text('跳转到搜索页面')));
  }
}
