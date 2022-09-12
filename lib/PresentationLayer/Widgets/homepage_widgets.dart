import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';
import 'package:story_view/story_view.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../Screens/Public/home_page.dart';
import '../Screens/Public/office_page.dart';

class House_Office extends StatelessWidget {
  @override
  final double element_w;
  final Widget content;
  final int item_count;
  final Color back_color;

  House_Office({
    Key? key,
    required this.element_w,
    required this.content,
    required this.item_count,
    required this.back_color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: element_w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imagesUrl[i],
                      ),
                      fit: BoxFit.fill),
                  color: back_color,
                  borderRadius: BorderRadius.circular(20)),
              child: content,
            ),
          );
        },
        itemCount: item_count,
      ),
    );
  }
}

class content1 extends StatelessWidget {
  const content1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.office);
      },
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const CircleAvatar(
          backgroundImage: const AssetImage("assets/images/office.png"),
          radius: 20,
          backgroundColor: Colors.white,
        ),
        const Text(
          "مكتب الشام العقاري",
          style: white10NoBold,
        ),
        const Text("دمشق", style: white10NoBold),
      ]),
    );
  }
}

class content2 extends StatelessWidget {
  @override
  final String imageUrl;
  @override
  content2({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.propertyScreen);
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0XFF0F2E62).withAlpha(75),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 30,
                    child: const Center(
                        child: Text(
                      "بيع",
                      style: white10NoBold,
                    )),
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "منزل للبيع",
                        style: SmallWhiteTextArabic,
                      ),
                      const Text(
                        "دمشق",
                        style: grey10NoBold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("حمام 2",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(Icons.ac_unit_sharp,
                              size: 8, color: Colors.white),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("غرف 5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(Icons.abc_outlined,
                              size: 8, color: Colors.white),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("شرقي",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(Icons.ac_unit_sharp,
                              size: 8, color: Colors.white),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("700",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(Icons.ac_unit_sharp,
                              size: 8, color: Colors.white),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> imagesUrl = [
  "assets/images/house1.png",
  "assets/images/house2.png",
  "assets/images/house3.png",
  "assets/images/house4.png",
];

class Houses_Office extends StatelessWidget {
  @override
  final double element_w;
  final Widget content;
  final int item_count;
  final Color back_color;

  Houses_Office({
    Key? key,
    required this.element_w,
    required this.content,
    required this.item_count,
    required this.back_color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: element_w,
              decoration: BoxDecoration(
                  color: back_color, borderRadius: BorderRadius.circular(20)),
              child: content,
            ),
          );
        },
        itemCount: item_count,
      ),
    );
  }
}

class content3 extends StatelessWidget {
  final StoryController controller = StoryController();

  content3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(StoryView(
          storyItems: [
            StoryItem.text(
                title: "Hello", backgroundColor: Colors.blue, roundedTop: true),
            StoryItem.inlineImage(
                url: 'assets/images/person.jpg',
                controller: controller,
                caption: const Text("")),
          ],
          controller: controller,
          onStoryShow: (s) {
            print("ss");
          },
          onComplete: () {
            Get.back();
          },
        ));
      },
      child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/house1.png"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      style: SmallBlueTextArabic,
      decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          fillColor: const Color(0XFFF8F8F8),
          prefixIcon: const Icon(Icons.search, color: const Color(0XFF0C3877)),
          hintText: "search_hint".tr,
          hintStyle: const TextStyle(
              fontSize: 15,
              color: const Color(0XFFBEBEBE),
              fontFamily: "Cairo"),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: const Color(0XFFD2D2D2))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: const Color(0XFFD2D2D2)))),
    );
  }
}
