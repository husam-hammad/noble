import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:noble/PresentationLayer/screens/public/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'BusinessLayer/Bindings/init_bindings.dart';
import 'BusinessLayer/Controllers/locale_controller.dart';
import 'Constants/languages.dart';
import 'Constants/router.dart';

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
      home: const HomePage(),
      locale: controller.initalLang,
      translations: Languages(),
      initialBinding: InitBinding(),
      getPages: routes,
    );
  }
}
