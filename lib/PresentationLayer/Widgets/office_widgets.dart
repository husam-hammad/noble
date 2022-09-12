import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/Constants/languages.dart';

import '../../Constants/colors.dart';

class Office_Info extends StatelessWidget {
  int followers_number = 200;
  Office_Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(80))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: AppColors.lightwhite,
                size: 40,
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.chevron_right,
                  color: AppColors.lightwhite,
                  size: 40,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
        Center(
            child: Column(children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/office.png"),
            radius: 50,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 5),
          Text(
            "Alsham Realestate",
            style: white18NoBold,
          ),
          SizedBox(height: 5),
          Text(
            "Damascus",
            style: SmallWhiteTextArabic,
          ),
        ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("1K", style: TitleWhiteArabic),
                Text("followers".tr, style: SmallWhiteTextArabic),
              ],
            ),
            Column(
              children: [
                Text("$followers_number", style: TitleWhiteArabic),
                Text("real_state".tr, style: SmallWhiteTextArabic),
              ],
            ),
          ],
        )
      ]),
    );
  }
}

class office_body extends StatelessWidget {
  const office_body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Container(
            child: Column(children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFFEDF1FD)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "address".tr,
                            style: SmallBlueTextArabicNoBold,
                          ),
                          Text("damascus_salhiya".tr,
                              style: SmallGreyTextArabicNoBold),
                        ]),
                    Spacer(),
                    Icon(
                      Icons.location_on,
                      color: AppColors.blue,
                      size: 35,
                    )
                  ]),
                ),
              )
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("last_properties".tr, style: MediumeBlueArabic),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/house4.png"),
                  radius: 25,
                ),
                title: Text(
                  "villa_for_sale".tr,
                  style: blue18NoBold,
                ),
                subtitle: Text(
                  "1,300,000",
                  style: SmallGreyTextArabicNoBold,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/house1.png"),
                  radius: 25,
                ),
                title: Text(
                  "villa_for_sale".tr,
                  style: blue18NoBold,
                ),
                subtitle: Text("1,300,000",
                    style: TextStyle(color: Color(0XFFD2D2D2), fontSize: 14)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/house2.png"),
                  radius: 25,
                ),
                title: Text(
                  "villa_for_sale".tr,
                  style: blue18NoBold,
                ),
                subtitle: Text("1,300,000", style: SmallGreyTextArabicNoBold),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/house3.png"),
                  radius: 25,
                ),
                title: Text(
                  "فيلا للبيع",
                  style: blue18NoBold,
                ),
                subtitle: Text("1,300,000"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
