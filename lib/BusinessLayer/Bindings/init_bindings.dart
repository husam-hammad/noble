import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/back_notification_controller.dart';
import 'package:noble/BusinessLayer/Controllers/property_controller.dart';
import 'package:noble/BusinessLayer/Controllers/story_controller.dart';

import '../Controllers/office_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StoriesController>(StoriesController());
    Get.put<BackNotificationController>(BackNotificationController());
    Get.put<PropertyController>(PropertyController());
    Get.put<OfficesController>(OfficesController());
  }
}
