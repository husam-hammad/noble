import 'package:flutter/material.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/routes.dart';
import 'package:get/get.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/login_widgets.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  GlobalKey<FormState> formState = GlobalKey<FormState>();

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
                  child: Text("login".tr, style: white25ArabicBold),
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
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
                        style: blue15TextArabicBold,
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
                                    titleText: const Text(
                                      "Cannot be empty",
                                      style: blue20ArabicBold,
                                    ),
                                    backgroundColor: Colors.grey,
                                    messageText: const Text(
                                      "Please enter your phone number",
                                      style: TextStyle(
                                          color: Color(0XFF707070),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    duration: const Duration(seconds: 2),
                                    colorText: AppColors.blue,
                                    boxShadows: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.2),
                                          blurRadius: 10.0,
                                          offset: const Offset(0.0, 10.0))
                                    ]);
                                return "";
                              } else if (text!.length <= 9 ||
                                  text.length >= 11) {
                                Get.snackbar("Should be 10 number",
                                    "Please enter your phone number correctly",
                                    titleText: const Text(
                                      "Should be 10 number",
                                      style: blue20ArabicBold,
                                    ),
                                    backgroundColor: Colors.grey,
                                    messageText: const Text(
                                      "Please enter your phone number correctly",
                                      style: TextStyle(
                                          color: Color(0XFF707070),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    duration: const Duration(seconds: 2),
                                    colorText: AppColors.blue,
                                    boxShadows: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.2),
                                          blurRadius: 10.0,
                                          offset: const Offset(0.0, 10.0))
                                    ]);
                                return "";
                              } else if (text.startsWith("09") != true) {
                                Get.snackbar("Should be start with 09",
                                    "Please enter your phone number correctly",
                                    titleText: const Text(
                                      "Should be start with 09",
                                      style: blue20ArabicBold,
                                    ),
                                    backgroundColor: Colors.grey,
                                    messageText: const Text(
                                      "Please enter your phone number correctly",
                                      style: TextStyle(
                                          color: Color(0XFF707070),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    duration: const Duration(seconds: 2),
                                    colorText: AppColors.blue,
                                    boxShadows: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.2),
                                          blurRadius: 10.0,
                                          offset: const Offset(0.0, 10.0))
                                    ]);
                                return "";
                              }
                              return null;
                            },
                            style: const TextStyle(
                              color: AppColors.blue,
                            ),
                            cursorColor: AppColors.blue,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintTextDirection: TextDirection.ltr,
                                hintText: '09XXXXXXXX',
                                hintStyle: const TextStyle(color: Color(0XFFBEBEBE)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0XFFD5D5D5), width: 1))),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: send,
                        child: Button(
                          text1: 'send_code'.tr,
                          buttonColor: AppColors.orange,
                          textColor: Colors.white,
                        ),
                      ),
                      Button(
                        text1: 'skip'.tr,
                        buttonColor: Colors.white,
                        textColor: const Color(0XFF707070),
                      )
                    ]),
              ),
            ),
            Expanded(
                child: BottomCircle(
              text: 'you_can_create_account'.tr,
              circleColor: const Color(0XFF707070).withOpacity(.2),
              textColor: const Color(0XFF707070),
              fontSize: 15,
            ))
          ],
        ),
      ),
    );
  }
}
