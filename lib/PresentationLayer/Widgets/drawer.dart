import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/Controllers/box_controller.dart';
import '../../BusinessLayer/Controllers/categories_controller.dart';
import '../../BusinessLayer/helpers/image_helper.dart';
import '../../Constants/api_links.dart';
import '../../Constants/routes.dart';

import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({
    Key? key,
  }) : super(key: key);
  final BoxContoller boxContoller = Get.find();
  final CategoriesController categoriesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GetBuilder(
          init: boxContoller,
          builder: (context) {
            return ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: AppColors.blue),
                  accountName: Text(
                      boxContoller.user != null
                          ? boxContoller.user!.name
                          : "Noble User",
                      style: white15ArabicBold),
                  accountEmail: Text(
                    boxContoller.user != null
                        ? boxContoller.user!.mobileNumber
                        : "",
                    style: white15ArabicBold,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: AppColors.orange,
                    backgroundImage: boxContoller.user != null
                        ? CachedNetworkImageProvider(ApiLinks.storageUrl +
                            ImageHelper.buildImage(boxContoller.user!.avatar))
                        : null,
                  ),
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
                  onTap: () {
                    Get.toNamed(AppRoutes.homepage);
                  },
                ),
                ListTile(
                  title: Text(
                    "profile".tr,
                    style: blue15TextArabicBold,
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: AppColors.lightgrey,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.profileScreen);
                  },
                ),
                ListTile(
                  title: Text(
                    "addnewproperty".tr,
                    style: blue15TextArabicBold,
                  ),
                  leading: const Icon(
                    Icons.add_box,
                    color: AppColors.lightgrey,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.addPropertyScreen);
                  },
                ),
                ExpansionTile(
                  title: Text(
                    "ads".tr,
                    style: blue15TextArabicBold,
                  ),
                  leading: const Icon(
                    Icons.shop_outlined,
                    color: AppColors.orange,
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "realestate".tr,
                        style: blue15TextArabicBold,
                      ),
                      leading: const Icon(
                        Icons.house,
                        color: AppColors.lightgrey,
                      ),
                      onTap: () {
                        Get.toNamed(AppRoutes.latestproperties);
                      },
                    ),
                    for (var item in categoriesController.categories)
                      ListTile(
                          title: Text(
                            item.name,
                            style: blue15TextArabicBold,
                          ),
                          leading: item.image != ''
                              ? Image.network(
                                  item.image,
                                  width: 25,
                                )
                              : const Icon(
                                  Icons.account_box,
                                  color: AppColors.lightgrey,
                                ),
                          onTap: () {
                            Get.toNamed(AppRoutes.categotyScreen,
                                arguments: [item]);
                          }),
                  ],
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
                                Get.back();
                                boxContoller.saveLocale("ar");
                              },
                            ),
                            ListTile(
                              title: const Text("English"),
                              onTap: () {
                                boxContoller.saveLocale("en");
                                Get.back();
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
                  leading:
                      const Icon(Icons.mood_rounded, color: AppColors.grey),
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
                  onTap: () {
                    Get.toNamed(AppRoutes.about);
                  },
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
            );
          }),
    );
  }
}
