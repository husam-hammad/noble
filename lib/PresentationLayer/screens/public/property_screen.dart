import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';

import '../../../BusinessLayer/Controllers/property_controller.dart';
import '../../../DataAccessLayer/Models/office.dart';
import '../../../DataAccessLayer/Models/property.dart';
import '../../Widgets/property_page_widgets.dart';

int showerNumber = 7;
int roomNumber = 5;
int opacity = 230;
String location = "east".tr;
String officeName = "sham_office".tr;
String adViewer = "show_proclaim".tr;

final PropertyController proController = Get.find();

class PropertyScreen extends StatelessWidget {
  final Property propety;
  final Office office;
  const PropertyScreen({Key? key, required this.propety, required this.office})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("buy_the_realstate".tr, style: white18NoBold),
            )),
          ),
        ),
        backgroundColor: Colors.white,
        body: SliverAppBarProperty(
          propety: propety,
          office: office,
        ),
      ),
    );
  }
}

int whatchNumber = 100;
