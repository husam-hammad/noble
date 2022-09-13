import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import '../../Widgets/homepage_widgets.dart';
import '../../Widgets/on_boarding_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
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
            style: blue20ArabicBold,
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
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: HomeTextField(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "last_story".tr,
                            style: blue15TextArabicBold,
                          ),
                          const Spacer(),
                          Text(
                            "show_all".tr,
                            style: grey15ArabicNoBold,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: StoryOffice(
                      backColor: Colors.transparent,
                      elementW: 100,
                      itemCount: 4,
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
                  decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 8),
                        child: Row(
                          children: [
                            Text("real_estate_ofices".tr,
                                style: blue15TextArabicBold),
                            const Spacer(),
                            Text(
                              "show_all".tr,
                              style: grey15ArabicNoBold,
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                          child: RealStateOffice(
                        elementW: 100,
                        itemCount: 11,
                        backColor: Color(0XFF487CC7),
                        content2: Content1(),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(color: Color(0XFFF8F8F8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "top_real_estate_announcements".tr,
                            style: blue15TextArabicBold,
                          ),
                          const Spacer(),
                          Text(
                            "show_all".tr,
                            style: grey15ArabicNoBold,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: SupremePoclaimes(
                      elementW: 175,
                      itemCount: 4,
                      backColor: Colors.transparent,
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
