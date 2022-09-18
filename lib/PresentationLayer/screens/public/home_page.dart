import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/Constants/routes.dart';
import '../../Widgets/home_page_folder/realstate_office.dart';
import '../../Widgets/home_page_folder/story_widget.dart';
import '../../Widgets/home_page_folder/supreme_poiclame.dart';
import '../../Widgets/on_boarding_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.dashboard_outlined,
                  size: 30,
                  color: AppColors.blue,
                ));
          }),
          title: Text(
            'noble_realstate'.tr,
            style: blue20ArabicBold,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.profileScreen);
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person.jpg"),
                  radius: 15,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: HomeTextField(),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "last_story".tr,
                            style: blue15TextArabicBold,
                          ),
                          const Spacer(),
                          Text(
                            "show_all".tr,
                            style: grey15ArabicNoBold,
                          ),
                        ],
                      ),
                    ),
                    StoryOffice(
                      backColor: Colors.transparent,
                      elementW: 100,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 8),
                        child: Row(
                          children: [
                            Text("real_estate_ofices".tr,
                                style: blue15TextArabicBold),
                            const Spacer(),
                            Text(
                              "show_all".tr,
                              style: grey15ArabicNoBold,
                            ),
                          ],
                        ),
                      ),
                      const RealStateOffice(
                        elementW: 100,
                        itemCount: 11,
                        backColor: Color(0XFF487CC7),
                        content2: Content1(),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "top_real_estate_announcements".tr,
                            style: blue15TextArabicBold,
                          ),
                          const Spacer(),
                          Text(
                            "show_all".tr,
                            style: grey15ArabicNoBold,
                          ),
                        ],
                      ),
                    ),
                    const SupremePoclaimes(
                      elementW: 175,
                      itemCount: 4,
                      backColor: Colors.transparent,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
