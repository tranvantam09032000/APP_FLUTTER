import 'package:flutter/material.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  const AppButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground
      ),
    );
  }
}
