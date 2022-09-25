import 'package:app_flutter/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroupColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButtons({Key? key,
    this.text = "Hi",
    this.icon,
    this.isIcon = false,
    required this.color,
    required this.backgroupColor,
    required this.size,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
          borderRadius: BorderRadius.circular(15),
          color: backgroupColor,
      ),
      child: isIcon == false ? Center(child: AppText(text: text!, color: color,)): Center(child: Icon(icon, color: color,)),
    );
  }
}
