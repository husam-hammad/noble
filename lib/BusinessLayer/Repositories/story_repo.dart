import 'dart:convert';

import 'package:noble/DataAccessLayer/Clients/story_client.dart';
import 'package:noble/DataAccessLayer/Models/story.dart';

class StoryRepo {
  var client = StoryClient();

  Future<List<Story>> getStories() async {
    var response = await client.getStories();

    if (response != null) {
      final parsed = json.decode(response).cast<Map<String, dynamic>>();
      return parsed.map<Story>((json) => Story.fromMap(json)).toList();
    }
    return [];
  }
}
