// ignore_for_file: avoid_print

import 'package:get/get.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../Repositories/user_repo.dart';

class UsersController extends GetxController {
  late List<User> users = [];
  var userRepo = UserRepo();
  var isLoading = false.obs;
  late List userRegister = [];
  final UsersController usersController = UsersController();
  @override
  void onInit() async {
    isLoading.value = true;
    users = await userRepo.getUsers();
    for (var element in users) {
      print(element.name);
      userRegister.add(element.name);
    }
    print(users);
    isLoading.value = false;
    super.onInit();
  }
}
