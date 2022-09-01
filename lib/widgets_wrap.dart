import 'package:flutter/material.dart';

class WidgetsWrap extends StatelessWidget {
  const WidgetsWrap({Key? key}) : super(key: key);

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
            child: Wrap(
              alignment: WrapAlignment.center,
              // direction: Axis.vertical,
              children: [
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
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
