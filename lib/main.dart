import 'package:flutter/material.dart';

void main()=>runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
   Home({super.key});
  final List<String> items = [
    'Apples',
    'Bananas',
    'Bread',
    'Milk',
    'Eggs',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Cart is empty")),
            );
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

