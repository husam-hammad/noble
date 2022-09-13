import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';

List<String> imagesUrl = [
  "assets/images/house1.png",
  "assets/images/house2.png",
  "assets/images/house3.png",
  "assets/images/house4.png",
];

class SupremePoclaimes extends StatelessWidget {
  final double elementW;
  final int itemCount;
  final Color backColor;

  const SupremePoclaimes({
    Key? key,
    required this.backColor,
    required this.itemCount,
    required this.elementW,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: elementW,
              decoration: BoxDecoration(
                  color: backColor, borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.propertyScreen);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagesUrl[i]), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0XFF0F2E62).withAlpha(75),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 30,
                              child: const Center(
                                  child: Text(
                                "بيع",
                                style: white10NoBold,
                              )),
                              decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "منزل للبيع",
                                  style: white15ArabicBold,
                                ),
                                const Text(
                                  "دمشق",
                                  style: grey10NoBold,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text("حمام 2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: "Cairo")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(Icons.ac_unit_sharp,
                                        size: 8, color: Colors.white),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("غرف 5",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: "Cairo")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(Icons.abc_outlined,
                                        size: 8, color: Colors.white),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("شرقي",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: "Cairo")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(Icons.ac_unit_sharp,
                                        size: 8, color: Colors.white),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("700",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: "Cairo")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(Icons.ac_unit_sharp,
                                        size: 8, color: Colors.white),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: itemCount,
      ),
    );
  }
}

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      style: blue15TextArabicBold,
      decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          fillColor: const Color(0XFFF8F8F8),
          prefixIcon: const Icon(Icons.search, color: Color(0XFF0C3877)),
          hintText: "search_hint".tr,
          hintStyle: const TextStyle(
              fontSize: 15, color: Color(0XFFBEBEBE), fontFamily: "Cairo"),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
    );
  }
}
