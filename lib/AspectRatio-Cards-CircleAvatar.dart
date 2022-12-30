import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: const MyWidget())));
}

// AcceptRatio 控制元素宽高比
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  // card 组件实现图文列表
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.all(20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          color: Colors.blueGrey,
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16.0)),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    'images/1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const ListTile(
                // 另一种实现原形图片的方法
                leading: CircleAvatar(
                  // radius: 15.0,
                  backgroundImage: AssetImage('images/2.jpeg'),
                ),
                title: Text('我是title'),
                subtitle: Text('我是子标题'),
              )
            ],
          ),
        ),
      ],
    );
  }

  // // Card 组件简单使用
  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: [
  //       Card(
  //         margin: const EdgeInsets.all(25.0),
  //         elevation: 0, // 阴影深度
  //         color: Colors.cyanAccent,
  //         // shadowColor: Colors.amber, // 阴影颜色
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  //         child: Column(
  //           children: const [
  //             ListTile(
  //               title: Text(
  //                 '张三',
  //                 style: TextStyle(fontSize: 28),
  //               ),
  //               subtitle: Text('Flutter 高级软件工程师'),
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             ListTile(
  //               title: Text('电话：152222222'),
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             ListTile(
  //               title: Text('地址：北京市海淀区东直门1233'),
  //             ),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

  // // 实现一个容器，宽度 100%, 高度为宽度的一半
  // @override
  // Widget build(BuildContext context) {
  //   return AspectRatio(
  //     aspectRatio: 2 / 1,
  //     child: Container(color: Colors.red),
  //   );
  // }
}
