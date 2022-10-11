import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';

import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/search_field.dart';
import 'custom_botton_nav.dart';
import '../../Widgets/home_page/highlights.dart';
import '../../Widgets/home_page/nearby_offices.dart';
import '../../Widgets/home_page/latest_stories.dart';
import '../../Widgets/drawer.dart';

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
        bottomNavigationBar: const CustomBottonNav(),
        drawer: MyDrawer(),
        appBar: customAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SearchField(),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: AppColors.lightwhite),
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
                    LatestStories()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: Get.width,
                  height: 170,
                  decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, bottom: 10, top: 10),
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
                      Nearbyoffices()
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
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.highlights);
                            },
                            child: Hero(
                              tag: 'highlights_hero',
                              child: Text(
                                "show_all".tr,
                                style: grey15ArabicNoBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    HighLights()
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
