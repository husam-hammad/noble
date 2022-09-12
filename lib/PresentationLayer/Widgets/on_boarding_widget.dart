import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../BusinessLayer/Controllers/locale_controller.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: AppColors.blue),
            accountName: Text("Yamen", style: SmallWhiteTextArabic),
            accountEmail: Text(
              "Yamen@gmail.com",
              style: SmallWhiteTextArabic,
            ),
            currentAccountPicture:
                CircleAvatar(backgroundColor: AppColors.orange),
          ),
          ListTile(
            title: Text(
              "home".tr,
              style: SmallBlueTextArabic,
            ),
            leading: Icon(
              Icons.home,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  title: 'Choose Language',
                  titleStyle: SmallBlueTextArabic,
                  content: Column(
                    children: [
                      ListTile(
                        title: Text("Arabic"),
                        onTap: () {
                          controllerLang.changeLanguage("ar");
                        },
                      ),
                      ListTile(
                        title: Text("English"),
                        onTap: () {
                          controllerLang.changeLanguage("en");
                        },
                      )
                    ],
                  ));
            },
            title: Text("language".tr, style: SmallBlueTextArabic),
            leading: Icon(
              Icons.language,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            title: Text('theme'.tr, style: SmallBlueTextArabic),
            leading: Icon(Icons.sunny, color: AppColors.lightgrey),
          ),
          ListTile(
            title: Text(
              "about".tr,
              style: SmallBlueTextArabic,
            ),
            leading: Icon(
              Icons.help,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            title: Text(
              "logout".tr,
              style: SmallBlueTextArabic,
            ),
            leading: Icon(
              Icons.logout,
              color: AppColors.lightgrey,
            ),
          ),
        ],
      ),
    );
  }
}
