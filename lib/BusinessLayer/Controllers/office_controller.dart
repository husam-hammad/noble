// ignore_for_file: avoid_print

import 'package:get/get.dart';

import 'package:story_view/controller/story_controller.dart';

import '../../DataAccessLayer/Models/office.dart';
import '../Repositories/office_repo.dart';

class OfficesController extends GetxController {
  late List<Office> offices = [];
  var officeRepo = OfficeRepo();
  var isLoading = false.obs;
  late List officeProp = [];
  final StoryController storyviewcontroller = StoryController();
  @override
  void onInit() async {
    isLoading.value = true;
    offices = await officeRepo.getOffices();
    for (var element in offices) {
      print(element.properties);
      officeProp.add(element.properties);
    }
    print(offices);
    isLoading.value = false;
    super.onInit();
  }
}
