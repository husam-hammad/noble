import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../Constants/font_styles.dart';

class Notification_Body extends StatelessWidget {
  const Notification_Body({
    Key? key,
    required this.notificationNumber,
  }) : super(key: key);

  final int notificationNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          return Container(
            child: ListTile(
                onTap: () {},
                title: Text(
                  notification_content[i],
                  style: SmallBlueTextArabic,
                ),
                subtitle: Text(
                  notification_time[i],
                  style: SmallGreyTextArabicNoBold,
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(photo[0]),
                )),
          );
        },
        itemCount: notificationNumber,
      ),
    );
  }
}

List<String> notification_content = [
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

List<String> notification_time = [
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

class Notification_Textfield extends StatelessWidget {
  const Notification_Textfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        style: SmallBlueTextArabic,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            fillColor: Color(0XFFF8F8F8),
            prefixIcon: Icon(Icons.search, color: Color(0XFF0C3877)),
            hintText: "search_in_notification".tr,
            hintStyle: SmallGreyTextArabicNoBold,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0XFFD2D2D2))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0XFFD2D2D2)))),
      ),
    );
  }
}
