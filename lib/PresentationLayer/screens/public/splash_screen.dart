import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/home_controller.dart';
import 'package:noble/Constants/languages.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Screens/Auth/login_page.dart';
import 'package:progress_indicators/progress_indicators.dart';
import '../../../Constants/colors.dart';
import 'package:noble/BusinessLayer/Controllers/home_controller.dart';

class SplashScreen extends StatelessWidget {
  double progress = 0.0;
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController().changePage;

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
                  Text("noble".tr,
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Cairo",
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "real_estate_service".tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Cairo",
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
