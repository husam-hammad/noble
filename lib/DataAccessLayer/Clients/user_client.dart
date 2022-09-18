// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';

class UserClient {
  Future<List<dynamic>> getUsers() async {
    try {
      var response = await Dio().get(ApiLinks.baseUrl + ApiLinks.users);
      print(response.data);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  Future<bool> sendOtp(otp, phone) async {
    var response = await Dio().post(
        "https://noble.brain.sy/api/v1/getVerifyCode",
        data: {"code": otp, "mobile_number": phone});
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
