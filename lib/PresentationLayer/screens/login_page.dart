import 'package:flutter/material.dart';
import 'package:nodle/Constants/colors.dart';
import 'package:nodle/Constants/routes.dart';
import 'package:get/get.dart';
import 'package:nodle/PresentationLayer/Screens/Auth/otp_check_page.dart';

import '../../../Constants/font_styles.dart';
import '../../Widgets/login_widgets.dart';

class Login_Page extends StatelessWidget {
  Login_Page({super.key});

  GlobalKey<FormState> formState = new GlobalKey<FormState>();

  send() {
    var formdata = formState.currentState;
    if (formdata!.validate() == true) {
      Get.to(() => Otp_Check_Page(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 200));
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
                  child: Text("تسجيل الدخول", style: TitleArabic),
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
                        "قم بإدخال رقم هاتفك",
                        style: SmallTextArabic,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Form(
                          key: formState,
                          child: TextFormField(
                            validator: (text) {
                              if (text?.isEmpty == true) {
                                Get.snackbar(
                                    "Cannot be empty",
                                    titleText: Text(
                                      "Cannot be empty",
                                      style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    backgroundColor: Colors.grey,
                                    "Please enter your phone number",
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
                                Get.snackbar(
                                    "Should be 10 number",
                                    titleText: Text(
                                      "Should be 10 number",
                                      style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    backgroundColor: Colors.grey,
                                    "Please enter your phone number correctly",
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
                                Get.snackbar(
                                    "Should be start with 09",
                                    titleText: Text(
                                      "Should be start with 09",
                                      style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    backgroundColor: Colors.grey,
                                    "Please enter your phone number correctly",
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
                          text1: 'إرسال الرمز',
                          button_color: AppColors.orange,
                          text_color: Colors.white,
                        ),
                      ),
                      button(
                        text1: 'تخطي',
                        button_color: Colors.white,
                        text_color: Color(0XFF707070),
                      )
                    ]),
              ),
            ),
            Expanded(
                child: bottom_circle(
              text: 'سيمكنك إنشاء الحساب من الاستفادة\nمنجميع خدمات التطبيق',
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
