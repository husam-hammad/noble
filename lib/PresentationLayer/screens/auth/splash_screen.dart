import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nodle/PresentationLayer/Screens/Auth/login_page.dart';
import 'package:progress_indicators/progress_indicators.dart';
import '../../../Constants/colors.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double progress = 0.0;
  int _delaySecond = 2;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: _delaySecond)).then((value) {
      Get.off(() => Login_Page());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: Container(
        color: AppColors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/nobleLogo.png"),
                  Text('Noble',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Real Estate Service",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 10,
              child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 5,
                  valueColor: AlwaysStoppedAnimation(AppColors.blue),
                  backgroundColor: AppColors.orange,
                  color: AppColors.orange),
            ),
          ],
        ),
      )),
    );
  }
}
