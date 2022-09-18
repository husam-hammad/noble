import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../DataAccessLayer/Models/office.dart';
import '../../Widgets/office_widgets.dart';

class OfficePage extends StatelessWidget {
  final Office office;

  const OfficePage({Key? key, required this.office}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: OfficeInfo(office: office),
            flex: 1,
          ),
          Expanded(
              flex: 1,
              child: OfficeBody(
                office: office,
              ))
        ]),
      ),
    );
  }
}
