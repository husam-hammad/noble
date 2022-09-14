import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/PresentationLayer/Widgets/on_boarding_widget.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/notifications_widgets.dart';

// ignore: must_be_immutable
class NotificationPage extends StatelessWidget {
  int notificationNumber = 11;
  NotificationPage({
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
            style: const TextStyle(
                color: Color(0XFF0C3877), fontSize: 20, fontFamily: "Cairo"),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.jpg"),
                radius: 15,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NotificationTextfield(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                "notifications".tr,
                style: blue20ArabicBold,
              ),
            ),
            NotificationBody(notificationNumber: notificationNumber)
          ],
        ),
      ),
    );
  }
}
