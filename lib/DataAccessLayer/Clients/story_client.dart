// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';

class StoryClient {
  Future<dynamic> getStories() async {
    try {
      var response = await Dio().get(ApiLinks.baseUrl + ApiLinks.stories);
      if (response.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
