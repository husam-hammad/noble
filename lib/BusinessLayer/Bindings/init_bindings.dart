import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/cities_controller.dart';
import 'package:noble/BusinessLayer/Controllers/cladding_controller.dart';
import '../Controllers/auth_controller.dart';
import '../Controllers/box_controller.dart';
import '../Controllers/categories_controller.dart';
import '../Controllers/locale_controller.dart';
import '../Controllers/property_type_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BoxContoller>(BoxContoller());
    Get.put<MyLocaleController>(MyLocaleController());
    Get.lazyPut(() => AuthController());
    Get.put<CategoriesController>(CategoriesController());
    Get.put<CitiesController>(CitiesController());
    Get.put<CladdingController>(CladdingController());
    Get.put<TypesController>(TypesController());
  }
}
