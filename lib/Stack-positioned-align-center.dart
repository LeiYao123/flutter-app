import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: const StackPage())));
}

class StackPage extends StatelessWidget {
  const StackPage({super.key});

// Align 组件 Center 组件直接调整位置，不必在单独设置 Container

// stack 在顶层实现固定定位
  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size; // 获取屏幕尺寸
    // 结合 Row Column Expanded 实现
    return Stack(children: [
      ListView(children: const [
        SizedBox(
          height: 50,
        ),
        ListTile(title: Text('我是0个标题')),
        ListTile(title: Text('我是一个标题')),
        Align(
          alignment: Alignment.center,
          child: Text('Align组件使用'),
        ),
        Center(
          child: Text('Center组件使用'),
        ),
        ListTile(title: Text('我是2个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
        ListTile(title: Text('我是一个标题')),
      ]),
      Positioned(
          width: sizeW.width,
          // width: double.infinity, // poositioned 不能使用 double.infinity
          height: 44,
          child: Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            color: Colors.red,
            child: const Text('我是二级导航'),
          ))
    ]);
  }

// 利用 stack 实现相对、绝对定位
  // @override
  // Widget build(BuildContext context) {
  //   // 结合 Row Column Expanded 实现
  //   return Container(
  //       width: 400,
  //       height: 300,
  //       color: Colors.amberAccent,
  //       child: Stack(children: [
  //         Positioned(
  //             left: 12,
  //             bottom: 0,
  //             child: Container(
  //               width: 50,
  //               height: 50,
  //               color: Colors.red,
  //             ))
  //       ]));
  // }

// // stack 基础使用
//   @override
//   Widget build(BuildContext context) {
//     // 结合 Row Column Expanded 实现
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           width: 400,
//           height: 400,
//           color: Colors.redAccent,
//         ),
//         Container(
//           width: 100,
//           height: 100,
//           color: Colors.yellow,
//         ),
//         const Text('你好 flutter')
//       ],
//     );
//   }
}
