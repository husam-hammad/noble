import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

List<String> imagesUrl = [
  "assets/images/house1.png",
  "assets/images/house2.png",
  "assets/images/house3.png",
  "assets/images/house4.png",
];

class StoryOffice extends StatelessWidget {
  final StoryController controller = StoryController();

  final double elementW;
  final int itemCount;
  final Color backColor;

  StoryOffice({
    Key? key,
    required this.elementW,
    required this.itemCount,
    required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: elementW,
            decoration: BoxDecoration(
                color: backColor, borderRadius: BorderRadius.circular(20)),
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
                          image: AssetImage(imagesUrl[i]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        );
      },
      itemCount: itemCount,
    );
  }
}
