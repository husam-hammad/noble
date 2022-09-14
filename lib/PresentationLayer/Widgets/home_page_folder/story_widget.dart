import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/story_controller.dart';
import 'package:noble/Constants/api_links.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryOffice extends StatelessWidget {
  final StoryController controller = StoryController();
  final StoriesController storiesController = Get.find();
  final double elementW;
  final Color backColor;

  StoryOffice({
    Key? key,
    required this.elementW,
    required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StoriesController>(
        init: storiesController,
        builder: (_) {
          return Container(
            height: 160,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: storiesController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: storiesController.stories.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: elementW,
                          decoration: BoxDecoration(
                              color: backColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {
                              Get.to(StoryView(
                                storyItems: [
                                  StoryItem.text(
                                      title: "Hello",
                                      backgroundColor: Colors.blue,
                                      roundedTop: true),
                                  StoryItem.inlineImage(
                                      url: 'assets/images/person.jpg',
                                      controller: controller,
                                      caption: const Text("")),
                                ],
                                controller: controller,
                                onStoryShow: (s) {},
                                onComplete: () {
                                  Get.back();
                                },
                              ));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(ApiLinks
                                                .storageLink +
                                            storiesController.stories[i].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      );
                    },
                  ),
          );
        });
  }
}
