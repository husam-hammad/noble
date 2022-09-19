import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/office_controller.dart';

import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';

class RealStateOffice extends StatelessWidget {
  final OfficesController officesController = Get.find();
  final double elementW;
  final int itemCount;
  final Color backColor;

  RealStateOffice({
    Key? key,
    required this.backColor,
    required this.itemCount,
    required this.elementW,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfficesController>(
        init: officesController,
        builder: (_) {
          return Container(
            height: 110,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
              itemCount: officesController.offices.length,
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
                          Get.toNamed(AppRoutes.office);
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    officesController.offices[i].logo),
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                officesController.offices[i].name,
                                style: white10NoBold,
                              ),
                              const Text("دمشق", style: white10NoBold),
                            ]),
                      )),
                );
              },
            ),
          );
        });
  }
}
