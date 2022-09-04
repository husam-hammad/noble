import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nodle/Constants/colors.dart';
import 'package:nodle/Constants/font_styles.dart';
import '../../Widgets/homepage_widgets.dart';
import 'office_page.dart';

class Home_Page extends StatelessWidget {
  Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.abc,
            size: 30,
            color: AppColors.blue,
          ),
          title: Text(
            'Noble Realestate',
            style: TextStyle(color: Color(0XFF0C3877), fontSize: 20),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.jpg"),
                radius: 5,
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
                    hintText: "ابحث في نوبل, عقارات, مكاتب عقارية, مدينة",
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
                            "آخر القصص",
                            style: SmallTextArabic,
                          ),
                          Spacer(),
                          Text(
                            "عرض الكل",
                            style: TextStyle(
                                color: Color(0XFFBEBEBE),
                                fontSize: 13,
                                fontFamily: "Cairo"),
                          ),
                        ],
                      ),
                    ),
                    Story_View_Widget()
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
                            Text("المكاتب العقارية", style: SmallTextArabic),
                            Spacer(),
                            Text(
                              "عرض الكل",
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
                            "أبرز الإعلانات العقارية",
                            style: SmallTextArabic,
                          ),
                          Spacer(),
                          Text(
                            "عرض الكل",
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

class Story_View_Widget extends StatelessWidget {
  const Story_View_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: House_Office(
      back_color: Colors.transparent,
      element_w: 100,
      item_count: 4,
      content: content3(),
      showHouses: () {},
    ));
  }
}
