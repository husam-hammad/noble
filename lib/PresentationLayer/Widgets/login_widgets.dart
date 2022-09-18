import 'package:flutter/material.dart';

class LoginWidgets extends StatelessWidget {
  const LoginWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(""),
    );
  }
}

class BottomCircle extends StatelessWidget {
  final String text;
  final Color circleColor;
  final Color textColor;
  final double fontSize;

  const BottomCircle({
    Key? key,
    required this.text,
    required this.circleColor,
    required this.textColor,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: circleColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(120), topRight: Radius.circular(120))),
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: "Cairo",
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text1;
  final Color buttonColor;
  final Color textColor;

  @override
  const Button(
      {Key? key,
      required this.text1,
      required this.buttonColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, blurRadius: 2.0, offset: Offset(0.0, 2.0))
          ],
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text1,
              style: TextStyle(
                  color: textColor, fontSize: 15, fontFamily: "Cairo"),
            ),
          ),
        ),
      ),
    );
  }
}
