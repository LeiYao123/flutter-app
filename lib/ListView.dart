import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: const MyList())));
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10.0),
        children: [
          Container(
            height: 120,
            width: 120,
            // width: , listview 里面的 container 宽度是自适应的
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.yellowAccent),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.blueAccent),
          ),
          Container(
            height: 120,
            width: 120,
            // width: , listview 里面的 container 宽度是自适应的
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.yellowAccent),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.blueAccent),
          )
        ],
      ),
    );
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(10.0), children: [
      Image.asset("images/1.jpeg"),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: 44,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.green, width: 1)),
        child: const Text(
          '标题',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w900, fontSize: 28),
          textAlign: TextAlign.center,
        ),
      ),
      Image.asset("images/2.jpeg"),
      Image.asset("images/3.jpeg"),
    ]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      children: [
        ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
            leading: const Icon(Icons.home),
            title: const Text('首页'),
            trailing: Image.asset("images/1.jpeg")),
        const Divider(),
        ListTile(
            leading: const Icon(Icons.home),
            title: const Text('首页'),
            trailing: Image.asset("images/1.jpeg")),
        const Divider()
      ],
    );
  }
}
