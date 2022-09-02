import 'package:flutter/material.dart';

class WidgetsExpanded extends StatelessWidget {
  const WidgetsExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Row(
              children: [
                MyContainer(),
                Expanded(flex: 1, child: MyContainer()),
                Expanded(flex: 3, child: MyContainer()),
              ],
            ),
          ),
        ));
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 50,
      width: 50,
      color: Colors.blue,
    );
  }
}
