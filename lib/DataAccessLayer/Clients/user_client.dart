// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class UserClient {
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
