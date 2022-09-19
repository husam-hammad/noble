import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/PresentationLayer/Widgets/login_widgets.dart';
import 'package:noble/PresentationLayer/Widgets/on_boarding_widget.dart';

import '../../../Constants/colors.dart';
import '../../Widgets/home_page_folder/highlights.dart';
import '../../Widgets/profile_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const HomeTextField(),
            const Text(
              "الملف الشخصي",
              style: blue20ArabicBold,
            ),
            const Center(
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/person.jpg")),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "الاسم",
                  style: blue15TextArabicBold,
                ),
                SizedBox(
                  height: 3,
                ),
                ProfileTextfield(
                  fieldColor: Color(0XFFF3F3F3),
                  hint: '',
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "العنوان",
                  style: blue15TextArabicBold,
                ),
                SizedBox(
                  height: 3,
                ),
                ProfileTextfield(
                  fieldColor: Color(0XFFF3F3F3),
                  hint: '',
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "تاريخ الميلاد",
                  style: blue15TextArabicBold,
                ),
                SizedBox(
                  height: 3,
                ),
                ProfileTextfield(
                  fieldColor: Color(0XFFF3F3F3),
                  hint: '',
                ),
              ],
            ),
            const Button(
                text1: "تعديل معلومات الملف الشخصي",
                buttonColor: AppColors.orange,
                textColor: AppColors.lightwhite),
            Button(
                text1: "skip".tr,
                buttonColor: AppColors.lightwhite,
                textColor: AppColors.lightgrey)
          ],
        ),
      ),
    );
  }
}
