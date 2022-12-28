import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: GridviewBuilder())));
}

class GridviewBuilder extends StatelessWidget {
  List list = [];
  GridviewBuilder({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add({'title': "我是标题$i", 'desc': '我是desc$i'});
    }
  }

  Widget _initGridViewData(context, index) {
    return Container(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset("images/2.jpeg", fit: BoxFit.cover),
            ),
            Container(
              margin: const EdgeInsets.all(25.0),
              child: Text("title $index",
                  style: const TextStyle(fontSize: 20, color: Colors.black)),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(30.0),
      itemCount: 18,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.7),
      itemBuilder: _initGridViewData,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  List<Widget> _initGridView() {
    List<Widget> list = [];

    for (var i = 0; i < 15; i++) {
      list.add(
        Container(
            clipBehavior: Clip.hardEdge,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10.0)),
                  child: Image.asset("images/2.jpeg", fit: BoxFit.cover),
                ),
                Container(
                  margin: const EdgeInsets.all(25.0),
                  child: const Text("111",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            )),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 3,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 0.7,
      children: _initGridView(),
    );
  }
}
