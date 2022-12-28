import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: Column(
            children: const [Myapp(), MyButton()],
          ))));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 100,
        decoration: const BoxDecoration(color: Color(0xffB74093)),
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: const Text(
          'data',
          style: TextStyle(
              color: Colors.green,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              letterSpacing: 5),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
      child: const Text(
        '我是按钮',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
