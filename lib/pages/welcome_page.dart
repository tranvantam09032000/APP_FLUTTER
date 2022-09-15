import 'package:app_flutter/misc/colors.dart';
import 'package:app_flutter/widgets/app_text.dart';
import 'package:app_flutter/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

import '../widgets/app_large_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: this.images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + this.images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(text: "Mountain", size: 30),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Mountain hikes you an incredible sense of freedom along with endurance test",
                            color: AppColors.textColor2,
                          ),
                        ),
                        SizedBox(height: 40,),
                        ResponesiveButton(width: 120)
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
