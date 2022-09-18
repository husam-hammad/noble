import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/office_controller.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/DataAccessLayer/Models/office.dart';

import '../../Constants/colors.dart';

final OfficesController offController = Get.find();

// ignore: must_be_immutable
class OfficeInfo extends StatelessWidget {
  final Office office;
  int followersNumber = 200;
  OfficeInfo({Key? key, required this.office}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfficesController>(
        init: offController,
        builder: (_) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: AppColors.lightwhite,
                          size: 40,
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
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
                      child: Column(children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(""),
                      radius: 50,
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "",
                      style: white20ArabicBold,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "",
                      style: white15ArabicBold,
                    ),
                  ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text("1K", style: white25ArabicBold),
                          Text("followers".tr, style: white15ArabicBold),
                        ],
                      ),
                      Column(
                        children: [
                          Text("$followersNumber", style: white25ArabicBold),
                          Text("real_state".tr, style: white15ArabicBold),
                        ],
                      ),
                    ],
                  )
                ]),
          );
        });
  }
}

class OfficeBody extends StatelessWidget {
  final Office office;
  const OfficeBody({Key? key, required this.office}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfficesController>(
        init: offController,
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Column(children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0XFFEDF1FD)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "address".tr,
                                style: blue15ArabicNoBold,
                              ),
                              const Text("", style: grey15ArabicNoBold),
                            ]),
                        const Spacer(),
                        const Icon(
                          Icons.location_on,
                          color: AppColors.blue,
                          size: 35,
                        )
                      ]),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("last_properties".tr, style: blue20ArabicBold),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/house4.png"),
                        radius: 25,
                      ),
                      title: Text(
                        "villa_for_sale".tr,
                        style: blue18NoBold,
                      ),
                      subtitle: const Text(
                        "1,300,000",
                        style: grey15ArabicNoBold,
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/house1.png"),
                        radius: 25,
                      ),
                      title: Text(
                        "villa_for_sale".tr,
                        style: blue18NoBold,
                      ),
                      subtitle: const Text("1,300,000",
                          style: TextStyle(
                              color: Color(0XFFD2D2D2), fontSize: 14)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/house2.png"),
                        radius: 25,
                      ),
                      title: Text(
                        "villa_for_sale".tr,
                        style: blue18NoBold,
                      ),
                      subtitle:
                          const Text("1,300,000", style: grey15ArabicNoBold),
                    ),
                    const ListTile(
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
        });
  }
}
