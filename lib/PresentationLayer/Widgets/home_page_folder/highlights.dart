import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/office_controller.dart';
import 'package:noble/BusinessLayer/Controllers/property_controller.dart';
import 'package:noble/PresentationLayer/screens/public/property_screen.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';

String location = "شرقي";

class HighLights extends StatelessWidget {
  final PropertyController propertyController = Get.find();
  final OfficesController officesController = Get.find();

  final double elementW;
  final Color backColor;

  HighLights({
    Key? key,
    required this.backColor,
    required this.elementW,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertyController>(
        init: propertyController,
        builder: (_) {
          return Container(
            height: 130,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
              itemCount: propertyController.properties.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: elementW,
                    decoration: BoxDecoration(
                        color: backColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => PropertyScreen(
                              propety: propertyController.properties[i],
                              office: officesController.offices[i],
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://noble.brain.sy/storage/' +
                                        json.decode(propertyController
                                            .properties[i].image)[0]),
                                fit: BoxFit.fill),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      "sell".tr,
                                      style: white10NoBold,
                                    )),
                                    decoration: BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        propertyController.properties[i].name,
                                        style: white15ArabicBold,
                                      ),
                                      const Text(
                                        "دمشق",
                                        style: grey10NoBold,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(Icons.bathtub_sharp,
                                              size: 8, color: Colors.white),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                              propertyController
                                                  .properties[i].baths
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontFamily: "Cairo")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.single_bed,
                                              size: 8, color: Colors.white),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                              propertyController
                                                  .properties[i].rooms
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontFamily: "Cairo")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.open_with,
                                              size: 8, color: Colors.white),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(location,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontFamily: "Cairo")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.home,
                                              size: 8, color: Colors.white),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                              propertyController
                                                  .properties[i].space,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontFamily: "Cairo")),
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
            ),
          );
        });
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
