import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/PresentationLayer/Screens/Public/on_boarding.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import '../../Constants/font_styles.dart';
import 'login_widgets.dart';

GlobalKey<FormState> formState2 = new GlobalKey<FormState>();

class Verify extends StatelessWidget {
  Verify({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: VerificationCode(
        autofocus: true,
        textStyle: SmallBlueTextArabic,
        onCompleted: (String value) {},
        onEditing: (bool value) {
          FocusScope.of(context).unfocus();
        },
        length: 6,
        cursorColor: AppColors.blue,
        keyboardType: TextInputType.number,
        fullBorder: true,
        underlineColor: AppColors.orange,
        underlineUnfocusedColor: Color(0XFFD5D5D5),
      ),
    );
  }
}
