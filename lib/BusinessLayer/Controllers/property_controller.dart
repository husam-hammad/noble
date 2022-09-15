// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/property_repo.dart';
import 'package:noble/DataAccessLayer/Models/property.dart';

class PropertyController extends GetxController {
  late List<Property> properties = [];
  var propertyRepo = PropertyRepo();
  var isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    properties = await propertyRepo.getProperty();

    print(properties);
    isLoading.value = false;
    super.onInit();
  }
}
