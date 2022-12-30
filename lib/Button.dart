import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: const MyButton())));
}

// Flutter button 组件使用 https://juejin.cn/post/7149478456609210375
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('我是一个button')),
            TextButton(onPressed: () {}, child: const Text('我是一个textbutton')),
            OutlinedButton(
                onPressed: () {}, child: const Text('OutlinedButton')),
            CupertinoButton(
                child: const Text('OutlinedButton'), onPressed: () {}),
            BackButton(
              onPressed: () {},
            ),
            CloseButton(
              onPressed: () {},
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Text('浮动'),
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0.0),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  // fixedSize: const Size(150, 32),
                  // shape: const CircleBorder()
                ),
                child: const Text('按钮'))
          ],
        )
      ]),
    );
  }
}
