import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'BusinessLayer/Bindings/init_bindings.dart';
import 'Constants/languages.dart';
import 'Constants/router.dart';

SharedPreferences? sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  sharedpref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static int currentPage = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale.fromSubtags(languageCode: "ar"),
      translations: Languages(),
      initialBinding: InitBinding(),
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          brightness: Brightness.light,
          fontFamily:
              Get.locale?.languageCode == "en" ? "Montserrat" : "Cairo"),
      getPages: router,
    );
  }
}
