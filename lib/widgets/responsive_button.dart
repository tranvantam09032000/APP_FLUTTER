import 'package:app_flutter/misc/colors.dart';
import 'package:flutter/material.dart'
    '';

class ResponesiveButton extends StatelessWidget {
  bool? isResponsive;
  double width;

  ResponesiveButton({Key? key, required this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/button-one.png")
        ],
      ),
    );
  }
}
