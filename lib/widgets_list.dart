import 'package:flutter/material.dart';
class WidgetsList extends StatelessWidget {
  final List<String> products;

  WidgetsList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Long List Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${products[index]}'),
            );
          },
        ),
      ),
    );
  }
}