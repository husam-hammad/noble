import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Screens/Public/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'BusinessLayer/Controllers/locale_controller.dart';
import 'Constants/languages.dart';
import 'Constants/router.dart';
import 'PresentationLayer/Screens/Public/office_page.dart';

SharedPreferences? sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      locale: controller.initalLang,
      translations: Languages(),
      getPages: routes,
    );
  }
}
