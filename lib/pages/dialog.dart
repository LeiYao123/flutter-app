import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDialogPage extends StatefulWidget {
  const MyDialogPage({super.key});

  @override
  State<MyDialogPage> createState() => _MyDialogPageState();
}

class _MyDialogPageState extends State<MyDialogPage> {
  void _showAlertDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('提示信息'),
            content: const Text('您确定要删除吗'),
            actions: [
              TextButton(
                  onPressed: () {
                    print('取消');
                    Navigator.of(context).pop('取消');
                  },
                  child: const Text('取消')),
              TextButton(
                  onPressed: () {
                    print('删除');
                    Navigator.of(context).pop('删除');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: const Text('删除'))
            ],
          );
        });
    print('res-->$res');
  }

  void _showSimpleDialog() async {
    showDialog(
        barrierDismissible: false, // 点击灰色背景不消失
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('simple dialog'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  print('汉语');
                },
                child: const Text('汉语'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  print('英语');
                },
                child: const Text('汉语'),
              ),
            ],
          );
        });
  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              ListTile(
                title: const Text('分享'),
                onTap: () {
                  print('分享');
                },
              ),
              const ListTile(
                title: Text('分享'),
              ),
              const ListTile(
                title: Text('分享'),
              ),
            ],
          );
        });
  }

  Future<bool?> _showToast() {
    return Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My App Dialog')),
      body: Container(
          height: 300,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: _showAlertDialog,
                  child: const Text('show alert dialog')),
              ElevatedButton(
                  onPressed: _showSimpleDialog,
                  child: const Text('show simple dialog')),
              ElevatedButton(
                  onPressed: _showModalBottomSheet,
                  child: const Text('show modalBottom sheet dialog')),
              ElevatedButton(
                  onPressed: _showToast,
                  child: const Text('show toast dialog')),
              // 点击事件容器
              InkWell(
                child: const Text('点击'),
                onTap: () {
                  print('inkwell');
                },
              )
            ],
          )),
    );
  }
}
