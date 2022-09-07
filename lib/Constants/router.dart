import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Screens/Auth/login_page.dart';
import 'package:noble/PresentationLayer/Screens/Auth/otp_check_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/office_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/on_boarding.dart';

import '../PresentationLayer/Screens/Public/splash_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
      name: AppRoutes.loginPage,
      page: () => Login_Page(),
      transition: Transition.rightToLeft),
  GetPage(
      name: AppRoutes.otpPage,
      page: () => Otp_Check_Page(),
      transition: Transition.rightToLeft),
  GetPage(
      name: AppRoutes.onBoardingScreen,
      page: () => OnBoarding(),
      transition: Transition.downToUp),
  GetPage(
      name: AppRoutes.office,
      page: () => Office_Page(),
      transition: Transition.zoom),
];
