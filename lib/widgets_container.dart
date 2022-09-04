import 'package:flutter/material.dart';

class WidgetsContainer extends StatelessWidget {
  const WidgetsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Container(
            child: Text(
              "Container",
              style: TextStyle(fontSize: 28),
            ),
            color: Colors.green,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(35),
            // decoration: BoxDecoration(
            //   color: Colors.green,
            //   border: Border.all(color: Colors.black, width: 4),
            //   borderRadius: BorderRadius.circular(10),
            //   boxShadow: [
            //     new BoxShadow(
            //       color: Colors.green,
            //       offset: new Offset(-6.0, -6.0),
            //     ),
            //   ],
            // ),
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(0.3),
          ),
        ));
  }
}
