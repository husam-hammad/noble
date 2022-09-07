import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/locale_controller.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import '../../Widgets/homepage_widgets.dart';
import 'package:noble/Constants/languages.dart';

import 'office_page.dart';

class Home_Page extends StatelessWidget {
  Home_Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.dashboard_outlined,
                  size: 30,
                  color: AppColors.blue,
                ));
          }),
          title: Text(
            'noble_realstate'.tr,
            style: TextStyle(
                color: Color(0XFF0C3877), fontSize: 20, fontFamily: "Cairo"),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.jpg"),
                radius: 15,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                style: SmallTextArabic,
                decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    fillColor: Color(0XFFF8F8F8),
                    prefixIcon: Icon(Icons.search, color: Color(0XFF0C3877)),
                    hintText: "search_hint".tr,
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0XFFBEBEBE),
                        fontFamily: "Cairo"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0XFFD2D2D2))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0XFFD2D2D2)))),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(color: Color(0XFFF8F8F8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "last_story".tr,
                            style: SmallTextArabic,
                          ),
                          Spacer(),
                          Text(
                            "show_all".tr,
                            style: TextStyle(
                                color: Color(0XFFBEBEBE),
                                fontSize: 13,
                                fontFamily: "Cairo"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Houses_Office(
                      back_color: Colors.transparent,
                      content: content3(),
                      element_w: 100,
                      item_count: 4,
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  decoration: BoxDecoration(color: Color(0XFFF8F8F8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 8),
                        child: Row(
                          children: [
                            Text("real_estate_ofices".tr,
                                style: SmallTextArabic),
                            Spacer(),
                            Text(
                              "show_all".tr,
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  color: Color(0XFFBEBEBE),
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Houses_Office(
                        element_w: 100,
                        content: content1(),
                        item_count: 11,
                        back_color: Color(0XFF487CC7),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(color: Color(0XFFF8F8F8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "top_real_estate_announcements".tr,
                            style: SmallTextArabic,
                          ),
                          Spacer(),
                          Text(
                            "show_all".tr,
                            style: TextStyle(
                                color: Color(0XFFBEBEBE),
                                fontSize: 13,
                                fontFamily: "Cairo"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: House_Office(
                      element_w: 175,
                      content: content2(
                        imageUrl: '',
                      ),
                      item_count: 4,
                      back_color: Colors.transparent,
                      showHouses: () {},
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

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
            accountName: Text("Yamen"),
            accountEmail: Text("Yamen@gmail.com"),
            currentAccountPicture:
                CircleAvatar(backgroundColor: AppColors.orange),
          ),
          ListTile(
            title: Text(
              "home".tr,
              style: SmallTextArabic,
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
                  titleStyle: TextStyle(
                      color: AppColors.blue, fontWeight: FontWeight.bold),
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
            title: Text("language".tr, style: SmallTextArabic),
            leading: Icon(
              Icons.language,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            title: Text('theme'.tr, style: SmallTextArabic),
            leading: Icon(Icons.sunny, color: AppColors.lightgrey),
          ),
          ListTile(
            title: Text(
              "about".tr,
              style: SmallTextArabic,
            ),
            leading: Icon(
              Icons.help,
              color: AppColors.lightgrey,
            ),
          ),
          ListTile(
            title: Text(
              "logout".tr,
              style: SmallTextArabic,
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
