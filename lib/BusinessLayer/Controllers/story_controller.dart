import 'package:get/get.dart';

import 'package:noble/BusinessLayer/Repositories/story_repo.dart';
import 'package:noble/DataAccessLayer/Models/story.dart';

class StoriesController extends GetxController {
  late List<Story> stories = [];
  var storyRepo = StoryRepo();
  var isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    stories = await storyRepo.getStories();
    isLoading.value = false;
    super.onInit();
  }
}
