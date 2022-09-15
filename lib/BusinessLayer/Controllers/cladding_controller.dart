// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/cladding_repo.dart';
import 'package:noble/DataAccessLayer/Models/cladding.dart';

class CladdingController extends GetxController {
  late List<Cladding> claddings = [];
  var claddingRepo = CladdingRepo();
  var isLoading = false.obs;
  late List claddingReal = [];
  final CladdingController claddingsController = CladdingController();
  @override
  void onInit() async {
    isLoading.value = true;
    claddings = await claddingRepo.getCladding();
    for (var element in claddings) {
      print(element.name);
      claddingReal.add(element.name);
    }
    print(claddings);
    isLoading.value = false;
    super.onInit();
  }
}
