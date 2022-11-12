import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:topcareproject/resource/color_manger.dart';

import '../../../resource/asset_manger.dart';
import '../../../resource/route/route.dart';
import '../../../resource/string_manger.dart';
import '../../../resource/textstyle.dart';

// this class to splash screen to start the appliction

class Splach extends StatefulWidget {
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    super.initState();
    // delay splash 4 s 500 ms after that go to onboarding screen
    Future.delayed(const Duration(seconds: 4, milliseconds: 500), () {
      Navigator.pushReplacementNamed(context, RouteGenerator.onBordingRoute);
    });
  }

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.asset(AssetManager.lottieAnim,
                  width: w / 1.5, height: h / 3, fit: BoxFit.cover),
              AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TyperAnimatedText(StringManager.splachTxt1,
                      textStyle: getboldStyle(
                        color: ColorManager.cyneColordark,
                        size: 45.0,
                      )),
                  TyperAnimatedText(StringManager.splachTxt2,
                      textStyle: getboldStyle(
                        color: ColorManager.cyneColordark,
                        size: 45.0,
                      )),
                  TyperAnimatedText(StringManager.splachTxt3,
                      textStyle: getboldStyle(
                        color: ColorManager.cyneColordark,
                        size: 45.0,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
