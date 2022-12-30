import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'my app title',
      home: Scaffold(
          appBar: AppBar(title: const Text('练习 flutter widget')),
          body: Column(
            children: const [
              Myapp(),
              CircularImage(),
              ClipOvalImage(),
              LocalImage()
            ],
          ))));
}

// sizebox 组件占据一个快可设置高度宽度 不必在写 margin 了
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.topLeft, 通过给 container 设置 alignment 也能改变图片位置
        width: 100,
        height: 100,
        decoration: const BoxDecoration(color: Color(0xffB74093)),
        margin: const EdgeInsets.all(10.0),
        // padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Image.network(
          'https://fanyi-cdn.cdn.bcebos.com/static/translation/img/header/logo_e835568.png',
          // fit: BoxFit.contain, // 默认效果
          repeat: ImageRepeat.repeatX,
          // alignment: Alignment.centerRight
        ),
      ),
    );
  }
}

// 圆形图片
class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.all(10.0),
      // 实现圆形图片
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15.0),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/99799032'))),
    );
  }
}

// clipover 实现
class ClipOvalImage extends StatelessWidget {
  const ClipOvalImage({super.key});

  @override
  Widget build(BuildContext context) {
    // 对子组件进行椭圆式裁剪
    return ClipOval(
      child: Image.network(
        'https://avatars.githubusercontent.com/u/99799032',
        width: 150,
        height: 150,
      ),
    );
  }
}

// 加载本地图片 该配置需重启
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Image.asset("images/1.jpeg"),
          const Icon(
            Icons.search,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
