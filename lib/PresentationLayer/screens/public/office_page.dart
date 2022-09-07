import 'package:flutter/material.dart';
import 'package:noble/Constants/languages.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';

import '../../Widgets/office_widgets.dart';

class Office_Page extends StatelessWidget {
  const Office_Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Hero(
        tag: 'office_hero',
        child: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Office_Info(),
                  flex: 1,
                ),
                Expanded(flex: 1, child: office_body())
              ]),
        ),
      ),
    );
  }
}
