import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';

class RealStateOffice extends StatelessWidget {
  final double elementW;
  final int itemCount;
  final Color backColor;
  final Widget content2;

  const RealStateOffice({
    Key? key,
    required this.backColor,
    required this.itemCount,
    required this.elementW,
    required this.content2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
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
                child: const Content1()),
          );
        },
        itemCount: itemCount,
      ),
    );
  }
}

class Content1 extends StatelessWidget {
  const Content1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.office);
      },
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/office.png"),
              radius: 20,
              backgroundColor: Colors.white,
            ),
            Text(
              "مكتب الشام العقاري",
              style: white10NoBold,
            ),
            Text("دمشق", style: white10NoBold),
          ]),
    );
  }
}
