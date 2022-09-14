import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/story_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StoriesController>(StoriesController());
  }
}
