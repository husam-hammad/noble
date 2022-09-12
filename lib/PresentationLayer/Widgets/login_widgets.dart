import 'package:flutter/material.dart';

class Login_Widgets extends StatelessWidget {
  const Login_Widgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(""),
    );
  }
}

class bottom_circle extends StatelessWidget {
  @override
  final String text;
  final Color circle_color;
  final Color text_color;
  final double font_size;

  @override
  bottom_circle({
    Key? key,
    required this.text,
    required this.circle_color,
    required this.text_color,
    required this.font_size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: circle_color,
          borderRadius: const BorderRadius.only(
              topLeft: const Radius.circular(120),
              topRight: Radius.circular(120))),
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: text_color,
                fontSize: font_size,
                fontFamily: "Cairo",
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class button extends StatelessWidget {
  @override
  final String text1;
  final Color button_color;
  final Color text_color;

  @override
  button(
      {Key? key,
      required this.text1,
      required this.button_color,
      required this.text_color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            const BoxShadow(
                color: Colors.grey, blurRadius: 2.0, offset: Offset(0.0, 2.0))
          ],
          borderRadius: BorderRadius.circular(10),
          color: button_color,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text1,
              style: TextStyle(
                  color: text_color, fontSize: 15, fontFamily: "Cairo"),
            ),
          ),
        ),
      ),
    );
  }
}
