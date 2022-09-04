import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WidgetsRichText extends StatelessWidget {
  const WidgetsRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            body: Center(
          child: RichText(
            text: TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.add, color: Colors.red),
                    ),
                  ),
                  TextSpan(
                      text: ' Sign up',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                      recognizer: TapGestureRecognizer()..onTap = () {})
                ]),
          ),
        )));
  }
}
