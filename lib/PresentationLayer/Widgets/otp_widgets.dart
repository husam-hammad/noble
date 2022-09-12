import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

/* import 'package:noble/Constants/colors.dart';

import '../../Constants/font_styles.dart';
 */
/* GlobalKey<FormState> formState2 = new GlobalKey<FormState>();
 */
class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child:
          PinCodeTextField(appContext: context, length: 6, onChanged: (_) {}),
    );
  }
}
