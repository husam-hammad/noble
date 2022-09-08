import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';
import 'package:story_view/story_view.dart';
import '../../Constants/colors.dart';
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
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/office.png"),
          radius: 20,
          backgroundColor: Colors.white,
        ),
        Text(
          "مكتب الشام العقاري",
          style:
              TextStyle(fontSize: 10, color: Colors.white, fontFamily: "Cairo"),
        ),
        Text("دمشق",
            style: TextStyle(
                fontSize: 10, color: Colors.white, fontFamily: "Cairo")),
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
                  color: Color(0XFF0F2E62).withAlpha(75),
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
                    child: Center(
                        child: Text(
                      "بيع",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: "Cairo"),
                    )),
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "منزل للبيع",
                        style:
                            TextStyle(color: Colors.white, fontFamily: "Cairo"),
                      ),
                      Text(
                        "دمشق",
                        style: TextStyle(
                            color: Color(0XFFBEBEBE),
                            fontSize: 11,
                            fontFamily: "Cairo"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("حمام 2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(Icons.ac_unit_sharp,
                              size: 8, color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Text("غرف 5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(Icons.abc_outlined,
                              size: 8, color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Text("شرقي",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(Icons.ac_unit_sharp,
                              size: 8, color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Text("700",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Cairo")),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(Icons.ac_unit_sharp,
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
                caption: Text("")),
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
              image: DecorationImage(
                  image: AssetImage("assets/images/house1.png"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
