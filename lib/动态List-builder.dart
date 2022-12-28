import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: ItemBuilder())));
}

class ItemBuilder extends StatelessWidget {
  List list = [];
  ItemBuilder({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add({'title': "我是标题$i", 'desc': '我是desc$i'});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(list[index]['title']),
              subtitle: Text(list[index]['desc']),
            ),
            const Divider()
          ],
        );
      }),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  List<Widget> _inintListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text('我是第$i个title'),
      ));
      list.add(const Divider());
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: _inintListData(),
      ),
    );
  }
}
