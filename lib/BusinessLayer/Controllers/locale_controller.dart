import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:noble/main.dart';

class MyLocaleController extends GetxController {
  Locale initalLang =
      sharedpref!.getString("lang") == "en" ? const Locale("en") : const Locale("ar");

  void changeLanguage(String codeLanguage) {
    Locale locale = Locale(codeLanguage);
    sharedpref!.setString("lang", codeLanguage);
    Get.updateLocale(locale);
  }
}
