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
            BottomNavigationBarItem(icon: Icon(null), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          ],
          // iconSize: 40,
          currentIndex: 1,
          onTap: (index) => print(index),
          fixedColor: Colors.amber,
          // 大于三个时需加这个type才会显示样式
          type: BottomNavigationBarType.fixed,
        ),
        // 裁剪为圆形
        floatingActionButton: ClipOval(
            child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(2.0),
          color: Colors.red,
          // 实现圆形
          // decoration: BoxDecoration(
          //     color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: FloatingActionButton(
            onPressed: () {
              print('++++');
            },
            child: const Icon(Icons.add),
          ),
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      )));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
