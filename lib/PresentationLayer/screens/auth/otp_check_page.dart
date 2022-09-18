import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Widgets/login_widgets.dart';
import '../../Widgets/otp_widgets.dart';

class OtpCheckPage extends StatelessWidget {
  const OtpCheckPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
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
                        height: 190, width: 190),
                    Center(
                      child: Text(
                        "we_send_code".tr,
                        style: sendCodeStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0, right: 20, left: 20),
                        child: Text("enter_the_code".tr, style: sendCodeStyle),
                      ),
                      const Center(child: Verify()),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.message,
                              color: Color(0XFF707070),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "re_sent_code".tr,
                              style: sendCodeStyle,
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
                          child: Button(
                              text1: 'confirm'.tr,
                              buttonColor: AppColors.orange,
                              textColor: Colors.white),
                        ),
                      )
                    ]),
              ),
              Expanded(
                  child: BottomCircle(
                text: 'verification'.tr,
                circleColor: AppColors.blue,
                textColor: Colors.white,
                fontSize: 25,
              ))
            ],
          )),
    );
  }
}
