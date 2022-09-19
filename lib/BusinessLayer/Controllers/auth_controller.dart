// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/font_styles.dart';
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
      } else {
        Get.rawSnackbar(
            icon: const Icon(
              Icons.warning,
              color: AppColors.lightgrey,
            ),
            backgroundColor: AppColors.errorRed,
            messageText: const Text(
              "if you don't receive the message, click on Re-sent message",
              style: grey15ArabicNoBold,
            ),
            duration: const Duration(seconds: 2));
      }
    }
  }

  verify() {
    if (otpController.value.text == otp) {
      Get.rawSnackbar(
          icon: const Icon(
            Icons.waving_hand_outlined,
            color: AppColors.lightgrey,
          ),
          backgroundColor: AppColors.succesGreen,
          messageText: const Text(
            "Welcome, you are a noble member now",
            style: grey15ArabicNoBold,
          ),
          duration: const Duration(seconds: 2));
      Get.toNamed(AppRoutes.homepage);
    } else {
      Get.rawSnackbar(
          icon: const Icon(
            Icons.warning,
            color: AppColors.lightgrey,
          ),
          backgroundColor: AppColors.errorRed,
          messageText: const Text(
            "Wrong Otp, please enter the right number",
            style: grey15ArabicNoBold,
          ),
          duration: const Duration(seconds: 2));
      return false;
    }
  }

  validate() {
    if (phoneController.value.text.isEmpty == true) {
      Get.rawSnackbar(
          icon: const Icon(
            Icons.warning,
            color: AppColors.lightgrey,
          ),
          backgroundColor: AppColors.errorRed,
          messageText: const Text(
            "Please Enter your Mobile Number",
            style: grey15ArabicNoBold,
          ),
          duration: const Duration(seconds: 2));
      return "";
    } else if (phoneController.value.text.length <= 9 ||
        phoneController.value.text.length >= 11) {
      Get.rawSnackbar(
          icon: const Icon(
            Icons.warning,
            color: AppColors.lightgrey,
          ),
          backgroundColor: AppColors.errorRed,
          messageText: const Text(
            "Please Enter your Number correctly",
            style: grey15ArabicNoBold,
          ),
          duration: const Duration(seconds: 2));
      return "";
    } else if (phoneController.value.text.startsWith("09") != true) {
      Get.rawSnackbar(
          icon: const Icon(
            Icons.warning,
            color: AppColors.lightgrey,
          ),
          backgroundColor: AppColors.errorRed,
          messageText: const Text(
            "should be start with 09",
            style: grey15ArabicNoBold,
          ),
          duration: const Duration(seconds: 2));
      return "";
    }
    return true;
  }
}
