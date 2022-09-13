import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../Constants/font_styles.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    Key? key,
    required this.notificationNumber,
  }) : super(key: key);

  final int notificationNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          return ListTile(
              onTap: () {},
              title: Text(
                notificationContent[i],
                style: blue15TextArabicBold,
              ),
              subtitle: Text(
                notificationTime[i],
                style: grey15ArabicNoBold,
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(photo[0]),
              ));
        },
        itemCount: notificationNumber,
      ),
    );
  }
}

List<String> notificationContent = [
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
  "new_watch".tr,
];

List<String> notificationTime = [
  "now".tr,
  "ten_min".tr,
  "tow_hour".tr,
  "one_hour".tr,
  "now".tr,
  "ten_min".tr,
  "tow_hour".tr,
  "one_hour".tr,
  "ten_min".tr,
  "tow_hour".tr,
  "one_hour".tr,
];

List<String> photo = ["assets/images/person.jpg"];

class NotificationTextfield extends StatelessWidget {
  const NotificationTextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        style: blue15TextArabicBold,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            fillColor: const Color(0XFFF8F8F8),
            prefixIcon: const Icon(Icons.search, color: Color(0XFF0C3877)),
            hintText: "search_in_notification".tr,
            hintStyle: grey15ArabicNoBold,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color:  Color(0XFFD2D2D2))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
      ),
    );
  }
}
