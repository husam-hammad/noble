import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/Controllers/box_controller.dart';
import '../../BusinessLayer/helpers/image_helper.dart';

import '../../Constants/api_links.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../../Constants/routes.dart';

PreferredSizeWidget customAppBar() {
  final BoxContoller boxContoller = Get.find();
  ImageProvider buildavatar() {
    if (boxContoller.user != null) {
      return CachedNetworkImageProvider(ApiLinks.storageUrl +
          ImageHelper.buildImage(boxContoller.user!.avatar));
    }
    return const AssetImage("assets/images/person.jpg");
  }

  return AppBar(
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
          child: CircleAvatar(
            backgroundImage: buildavatar(),
            radius: 15,
          ),
        ),
      ),
    ],
  );
}
