import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppLargeText(
      {Key? key, this.size = 30, required this.text, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: this.color,
        fontSize: this.size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
