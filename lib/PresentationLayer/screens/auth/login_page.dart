import 'package:flutter/material.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/routes.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/languages.dart';

import 'package:noble/PresentationLayer/Screens/Auth/otp_check_page.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/login_widgets.dart';

class Login_Page extends StatelessWidget {
  Login_Page({
    Key? key,
  }) : super(key: key);

  GlobalKey<FormState> formState = new GlobalKey<FormState>();

  send() {
    var formdata = formState.currentState;
    if (formdata!.validate() == true) {
      Get.toNamed(AppRoutes.otpPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text("login".tr, style: TitleArabic),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120))),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "enter_your_phone_number".tr,
                        style: SmallTextArabic,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Form(
                          key: formState,
                          child: TextFormField(
                            validator: (text) {
                              if (text?.isEmpty == true) {
                                Get.snackbar("Cannot be empty",
                                    "Please enter your phone number",
                                    titleText: Text(
                                      "Cannot be empty",
                                      style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    backgroundColor: Colors.grey,
                                    messageText: Text(
                                      "Please enter your phone number",
                                      style: TextStyle(
                                          color: Color(0XFF707070),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    duration: Duration(seconds: 2),
                                    colorText: AppColors.blue,
                                    boxShadows: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.2),
                                          blurRadius: 10.0,
                                          offset: Offset(0.0, 10.0))
                                    ]);
                                return "";
                              } else if (text!.length <= 9 ||
                                  text.length >= 11) {
                                Get.snackbar("Should be 10 number",
                                    "Please enter your phone number correctly",
                                    titleText: Text(
                                      "Should be 10 number",
                                      style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    backgroundColor: Colors.grey,
                                    messageText: Text(
                                      "Please enter your phone number correctly",
                                      style: TextStyle(
                                          color: Color(0XFF707070),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    duration: Duration(seconds: 2),
                                    colorText: AppColors.blue,
                                    boxShadows: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.2),
                                          blurRadius: 10.0,
                                          offset: Offset(0.0, 10.0))
                                    ]);
                                return "";
                              } else if (text.startsWith("09") != true) {
                                Get.snackbar("Should be start with 09",
                                    "Please enter your phone number correctly",
                                    titleText: Text(
                                      "Should be start with 09",
                                      style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    backgroundColor: Colors.grey,
                                    messageText: Text(
                                      "Please enter your phone number correctly",
                                      style: TextStyle(
                                          color: Color(0XFF707070),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    duration: Duration(seconds: 2),
                                    colorText: AppColors.blue,
                                    boxShadows: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.2),
                                          blurRadius: 10.0,
                                          offset: Offset(0.0, 10.0))
                                    ]);
                                return "";
                              }
                            },
                            style: TextStyle(
                              color: AppColors.blue,
                            ),
                            cursorColor: AppColors.blue,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintTextDirection: TextDirection.ltr,
                                hintText: '09XXXXXXXX',
                                hintStyle: TextStyle(color: Color(0XFFBEBEBE)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1))),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: send,
                        child: button(
                          text1: 'send_code'.tr,
                          button_color: AppColors.orange,
                          text_color: Colors.white,
                        ),
                      ),
                      button(
                        text1: 'skip'.tr,
                        button_color: Colors.white,
                        text_color: Color(0XFF707070),
                      )
                    ]),
              ),
            ),
            Expanded(
                child: bottom_circle(
              text: 'you_can_create_account'.tr,
              circle_color: Color(0XFF707070).withOpacity(.2),
              text_color: Color(0XFF707070),
              font_size: 15,
            ))
          ],
        ),
      ),
    );
  }
}
