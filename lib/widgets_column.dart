import 'package:flutter/material.dart';

class WidgetsColumn extends StatelessWidget {
  const WidgetsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text(
                  "React.js",
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text(
                  "Vuej.js",
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text(
                  "Angular.js",
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                ),
              ),
            ],
          ),
        ));
  }
}
