// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Clients/user_client.dart';
import 'package:noble/DataAccessLayer/Models/user.dart';

class UserRepo {
  var client = UserClient();

  Future<List<User>> getUsers() async {
    var response = await client.getUsers();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<User>((item) => User.fromMap(item)).toList();
    }
    return [];
  }
}
