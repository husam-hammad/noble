import 'package:flutter/material.dart';

import '../../Constants/font_styles.dart';

class ProfileTextfield extends StatelessWidget {
  final String hint;
  final Color fieldColor;
  const ProfileTextfield(
      {Key? key, required this.hint, required this.fieldColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      style: blue15TextArabicBold,
      decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          fillColor: fieldColor,
          hintText: hint,
          hintStyle: grey15ArabicNoBold,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
    );
  }
}
