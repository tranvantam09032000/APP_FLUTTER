import 'package:flutter/material.dart';

class WidgetsText extends StatelessWidget {
  const WidgetsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Center(
              child: Text("Hello World! This is a Text Widget.",
                  // maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.purple,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 8,
                      wordSpacing: 20,
                      backgroundColor: Colors.yellow,
                      shadows: [
                        Shadow(
                            color: Colors.blueAccent,
                            offset: Offset(2, 1),
                            blurRadius: 5)
                      ]))),
        ));
  }
}
