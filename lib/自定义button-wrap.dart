import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: const MyWidget())));
}

// Wrap 组件 换行功能的 flex
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15.0),
        child: Wrap(
          spacing: 15.0,
          runSpacing: 15.0,
          children: [
            Button('我是btn', onPressed: () {}),
            Button('我是btn', onPressed: () {}),
            Button('我是btn', onPressed: () {}),
            Button('我是btn', onPressed: () {}),
            Button('我是btn', onPressed: () {}),
            Button('我是btn', onPressed: () {}),
            Button('我是btn', onPressed: () {}),
          ],
        ));
  }
}

// 自定义button组件==>实现自定义圆角边框
class Button extends StatelessWidget {
  String text = '';
  void Function()? onPressed;
  Button(this.text, {super.key, required this.onPressed});
// https://juejin.cn/post/7149478456609210375
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.black,
            // 自定义圆角大小
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0))),
            // 自定义边框
            side: const BorderSide(color: Colors.red)),
        onPressed: onPressed,
        child: Text(text));
  }
}
