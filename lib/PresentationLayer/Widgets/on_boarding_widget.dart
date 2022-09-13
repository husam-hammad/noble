import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: AppColors.blue),
            accountName: Text("Yamen", style: white15ArabicBold),
            accountEmail:  Text(
              "Yamen@gmail.com",
              style: white15ArabicBold,
            ),
            currentAccountPicture:
                CircleAvatar(backgroundColor: AppColors.orange),
          ),
          ListTile(
            title: Text(
              "home".tr,
              style: blue15TextArabicBold,
            ),
            leading: const Icon(
              Icons.home,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  title: 'Choose Language',
                  titleStyle: blue15TextArabicBold,
                  content: Column(
                    children: [
                      ListTile(
                        title: const Text("Arabic"),
                        onTap: () {
                          controllerLang.changeLanguage("ar");
                        },
                      ),
                      ListTile(
                        title: const Text("English"),
                        onTap: () {
                          controllerLang.changeLanguage("en");
                        },
                      )
                    ],
                  ));
            },
            title: Text("language".tr, style: blue15TextArabicBold),
            leading: const Icon(
              Icons.language,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            title: Text('theme'.tr, style: blue15TextArabicBold),
            leading: const Icon(Icons.sunny, color: AppColors.lightgrey),
          ),
          ListTile(
            title: Text(
              "about".tr,
              style: blue15TextArabicBold,
            ),
            leading: const Icon(
              Icons.help,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            title: Text(
              "logout".tr,
              style: blue15TextArabicBold,
            ),
            leading: const Icon(
              Icons.logout,
              color: AppColors.lightgrey,
            ),
          ),
        ],
      ),
    );
  }
}
