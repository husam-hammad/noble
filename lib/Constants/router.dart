import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Screens/Auth/login_page.dart';
import 'package:noble/PresentationLayer/Screens/Auth/otp_check_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/office_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/on_boarding.dart';

import '../PresentationLayer/Screens/Public/property_screen.dart';
import '../PresentationLayer/Screens/Public/splash_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: AppRoutes.otpPage,
      page: () => const OtpCheckPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: AppRoutes.onBoardingScreen,
      page: () => const OnBoarding(),
      transition: Transition.downToUp),
  GetPage(
    name: AppRoutes.office,
    transition: Transition.fadeIn,
    page: () => const OfficePage(),
  ),
  GetPage(
    name: AppRoutes.propertyScreen,
    transition: Transition.fadeIn,
    page: () => PropertyScreen(),
  ),
];
