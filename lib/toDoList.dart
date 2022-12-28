import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart'; // 1.第一步

void main() {
  // debugPaintSizeEnabled = true; //2.第二步
  final p = [
    Product(name: 'Eggs'),
    Product(name: 'Flour'),
    Product(name: 'Chocolate chips'),
  ];
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my app title',
      home: ShopList(products: p)));
}

// 购物车对象
class Product {
  Product({required this.name});
  final String name;
  bool checked = false;
}

typedef CartChangedCallback = Function(Product product);

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem({
    super.key,
    required this.product,
    required this.onCartChanged,
  });

  final Product product;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context, product) {
    return product.checked ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context, product) {
    if (!product.checked) return null;
    return const TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context, product),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context, product)),
    );
  }
}

class ShopList extends StatefulWidget {
  const ShopList({required this.products, super.key});
  final List<Product> products;

  @override
  State<StatefulWidget> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShopList> {
  void _handleChanged(Product product) {
    product.checked = !product.checked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('shopping list')),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: widget.products.map((product) {
            return ShoppingListItem(
                product: product, onCartChanged: _handleChanged);
          }).toList()),
    );
  }
}

//============================================================================================================

// // 复杂的状态
// class CounterDisplay extends StatelessWidget {
//   const CounterDisplay({required this.count, super.key});

//   final int count;

//   @override
//   Widget build(BuildContext context) {
//     return Text('count: $count');
//   }
// }

// // 按钮
// class CounterIncrementor extends StatelessWidget {
//   const CounterIncrementor({required this.onPressed, super.key});

//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: onPressed, child: const Text('increment'));
//   }
// }

// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<StatefulWidget> createState() => _CounterState();
// }

// // 状态控制器 大组件
// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _increment() {
//     setState(() {
//       ++_counter;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CounterIncrementor(onPressed: _increment),
//         const SizedBox(width: 16),
//         CounterDisplay(count: _counter)
//       ],
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   const MyButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         print('my button was tapped');
//       },
//       child: Container(
//         height: 50.0,
//         padding: const EdgeInsets.all(8.0),
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5.0),
//             color: Colors.lightGreen[500]),
//         child: const Center(
//           child: Text('Engage'),
//         ),
//       ),
//     );
//   }
// }

// class TutorialHome extends StatelessWidget {
//   const TutorialHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const IconButton(
//           onPressed: null,
//           icon: Icon(Icons.menu),
//           tooltip: 'Navgation menu',
//         ),
//         title: const Text('Example title'),
//         actions: const [IconButton(onPressed: null, icon: Icon(Icons.search))],
//       ),
//       body: const Center(
//         child: Text('Hello world'),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         onPressed: null,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text(
//               'data123',
//               style: Theme.of(context).primaryTextTheme.headline6,
//             ),
//           ),
//           const Expanded(
//               child: Center(
//             child: Text('hello world'),
//           ))
//         ],
//       ),
//     );
//   }
// }

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key, required this.title});

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56.0,
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       child: Row(children: [
//         const IconButton(
//           onPressed: null,
//           icon: Icon(Icons.menu),
//           tooltip: 'Navgation menu',
//         ),
//         title,
//         const IconButton(
//           onPressed: null,
//           icon: Icon(Icons.search),
//           tooltip: 'search',
//         )
//       ]),
//     );
//   }
// }
