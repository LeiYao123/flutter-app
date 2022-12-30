import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
        appBar: AppBar(title: const Text('练习 flutter widget')),
        body: const MyWidget(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          ],
          // iconSize: 40,
          currentIndex: 2,
          onTap: (index) => print(index),
          fixedColor: Colors.amber,
          // 大于三个时需加这个type才会显示样式
          type: BottomNavigationBarType.fixed,
        ),
      )));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
