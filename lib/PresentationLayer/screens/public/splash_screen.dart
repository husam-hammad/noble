import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/home_controller.dart';
import 'package:noble/Constants/font_styles.dart';
import '../../../Constants/colors.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  double progress = 0.0;
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          body: Container(
        color: AppColors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/nobleLogo.png"),
                  Text("noble".tr, style: white25ArabicBold),
                  Text("real_estate_service".tr, style: white20ArabicBold),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 10,
              child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 5,
                  valueColor: const AlwaysStoppedAnimation(AppColors.blue),
                  backgroundColor: AppColors.orange,
                  color: AppColors.orange),
            ),
          ],
        ),
      )),
    );
  }
}
