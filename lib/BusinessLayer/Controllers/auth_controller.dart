// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/DataAccessLayer/Clients/user_client.dart';
import 'package:noble/PresentationLayer/screens/auth/otp_check_page.dart';

import '../../Constants/colors.dart';

class AuthController extends GetxController {
  var phoneController = TextEditingController();
  var otpController = TextEditingController();
  var userclient = UserClient();
  Random number = Random();
  late String otp;
  get blue20ArabicBold => null;
  @override
  void onInit() async {
    otp = number.nextInt(999999).toString();
    print("otp Is :" + otp);
    super.onInit();
  }

  Future<void> SendOtp() async {
    if (validate() != "") {
      if (await userclient.sendOtp(otp, phoneController.value.text)) {
        Get.to(const OtpCheckPage());
      }
    }
  }

  verify() {
    if (otpController.value.text == otp) {
      Get.toNamed(AppRoutes.homepage);
    } else {
      // TODO : Show Snackbar Error
      return false;
    }
  }

  validate() {
    if (phoneController.value.text.isEmpty == true) {
      Get.snackbar("Cannot be empty", "Please enter your phone number",
          titleText: Text(
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
    } else if (phoneController.value.text.length <= 9 ||
        phoneController.value.text.length >= 11) {
      Get.snackbar(
          "Should be 10 number", "Please enter your phone number correctly",
          titleText: Text(
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
    } else if (phoneController.value.text.startsWith("09") != true) {
      Get.snackbar(
          "Should be start with 09", "Please enter your phone number correctly",
          titleText: Text(
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
    return true;
  }
}
