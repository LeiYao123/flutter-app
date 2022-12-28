import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: HomePage())));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 结合 Row Column Expanded 实现
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(5.0),
      height: 600,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'images/1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset(
                                  'images/2.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset(
                                  'images/3.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          )
                        ],
                      ))
                ],
              ))
        ],
      ),
    );

    // flex 布局 Expanded 相当于 flex: 1
    // return Container(
    //   width: double.infinity, // 100% 占满容器
    //   // height: 700,
    //   color: Colors.amber,
    //   child: Flex(
    //     direction: Axis.horizontal,
    //     children: [
    //       // expanded 内容设置宽度是没用的
    //       Expanded(child: IconContainer(Icons.abc), flex: 1),
    //       // Expanded(child: IconContainer(Icons.abc, color: Colors.red), flex: 1),
    //       // Expanded(child: IconContainer(Icons.abc), flex: 2),
    //       IconContainer(Icons.abc, color: Colors.red)
    //     ],
    //   ),
    // );

    // return Container(
    //   width: double.infinity, // 100% 占满容器
    //   // height: 700,
    //   color: Colors.amber,
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       IconContainer(Icons.abc),
    //       IconContainer(Icons.abc),
    //       IconContainer(
    //         Icons.search_sharp,
    //         color: Colors.purple,
    //       ),
    //     ],
    //   ),
    // );
    // return Container(
    //   // width: double.infinity, 100% 占满容器
    //   height: 700,
    //   color: Colors.amber,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       IconContainer(Icons.abc),
    //       IconContainer(Icons.abc),
    //       IconContainer(
    //         Icons.search_sharp,
    //         color: Colors.purple,
    //       ),
    //     ],
    //   ),
    // );
  }
}

// 定义一个 IconContainer 组件
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {super.key, this.color = Colors.greenAccent});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120.0,
      height: 120.0,
      color: color,
      child: Icon(
        icon,
        color: Colors.amber,
        size: 50.0,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // padding 组件功能比较单一仅提供padding 功能
    return const Padding(
      padding: EdgeInsets.all(150.0),
      child: Text('nihao'),
    );
    // 原始定义 padding
    // return Container(
    //   padding: const EdgeInsets.all(110.0),
    //   child: const Text('nihao'),
    // );
  }
}
