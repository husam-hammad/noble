import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nodle/Constants/colors.dart';
import 'package:nodle/Constants/font_styles.dart';
import 'package:nodle/PresentationLayer/Widgets/login_widgets.dart';

import '../../Widgets/otp_widgets.dart';
import '../Public/on_boarding.dart';

class Otp_Check_Page extends StatelessWidget {
  const Otp_Check_Page({super.key});

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
                        "قمنا بإرسال رمز إلى هاتفك لتتمكن من تأكيد حسابك\nقم بإدخاله في الخانات في الأسفل حال وصوله",
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
                        child: Text("قم بإدخال الرمز", style: SmallTextArabic),
                      ),
                      Center(child: Verify()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "إعادة إرسال الرمز",
                              style: SmallTextArabic,
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.message,
                              color: Color(0XFF707070),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: InkWell(
                          onTap: () {
                            Get.to(OnBoarding());
                          },
                          child: button(
                              text1: 'تأكيد',
                              button_color: AppColors.orange,
                              text_color: Colors.white),
                        ),
                      )
                    ]),
              ),
              Expanded(
                  child: bottom_circle(
                text: 'التحقق',
                circle_color: AppColors.blue,
                text_color: Colors.white,
                font_size: 25,
              ))
            ],
          )),
    );
  }
}
