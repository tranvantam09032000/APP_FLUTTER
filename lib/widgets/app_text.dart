import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppText(
      {Key? key, this.size = 16, required this.text, this.color = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: this.color,
          fontSize: this.size,
      ),
    );
  }
}
