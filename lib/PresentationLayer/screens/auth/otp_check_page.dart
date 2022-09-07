import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Widgets/login_widgets.dart';

import '../../Widgets/otp_widgets.dart';
import '../Public/on_boarding.dart';

class Otp_Check_Page extends StatelessWidget {
  const Otp_Check_Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/messageOtp.png",
                        height: 200, width: 200),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        "we_send_code".tr,
                        style: TextStyle(
                            color: Color(0XFF292929),
                            fontSize: 15,
                            fontFamily: "Cairo"),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20),
                        child:
                            Text("enter_the_code".tr, style: SmallTextArabic),
                      ),
                      Center(child: Verify()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.message,
                              color: Color(0XFF707070),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "re_sent_code".tr,
                              style: SmallTextArabic,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.onBoardingScreen);
                          },
                          child: button(
                              text1: 'confirm'.tr,
                              button_color: AppColors.orange,
                              text_color: Colors.white),
                        ),
                      )
                    ]),
              ),
              Expanded(
                  child: bottom_circle(
                text: 'verification'.tr,
                circle_color: AppColors.blue,
                text_color: Colors.white,
                font_size: 25,
              ))
            ],
          )),
    );
  }
}
