import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/home_controller.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/PresentationLayer/Screens/Public/favorite_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/home_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/more_page.dart';
import 'package:noble/PresentationLayer/Screens/Public/notification_page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Directionality(
        textDirection: Get.locale!.languageCode == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: white15ArabicBold,
              unselectedLabelStyle: white15ArabicBold,
              backgroundColor: AppColors.blue,
              currentIndex: controller.selectItem,
              onTap: (index) {
                controller.changeBord(index);
              },
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(.5),
              items: [
                BottomNavigationBarItem(
                    backgroundColor: AppColors.blue,
                    icon: const Icon(Icons.home),
                    label: "the_home".tr),
                BottomNavigationBarItem(
                    backgroundColor: AppColors.blue,
                    icon: const Icon(Icons.notifications),
                    label: "the_notification".tr),
                BottomNavigationBarItem(
                  backgroundColor: AppColors.blue,
                  icon: const Icon(Icons.favorite_border),
                  label: "the_favorite".tr,
                ),
                BottomNavigationBarItem(
                    backgroundColor: AppColors.blue,
                    icon: const Icon(Icons.message_sharp),
                    label: "the_more".tr),
              ]),
          body: homeWidget.elementAt(controller.selectItem),
        ),
      );
    });
  }
}

List<Widget> homeWidget = [
  const HomePage(),
  NotificationPage(),
  const FavoritePage(),
  const MorePage(),
];
