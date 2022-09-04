import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nodle/BusinessLayer/Controller/HomeController.dart';
import 'package:nodle/Constants/colors.dart';
import 'package:nodle/PresentationLayer/Screens/Public/favorite_page.dart';
import 'package:nodle/PresentationLayer/Screens/Public/home_page.dart';
import 'package:nodle/PresentationLayer/Screens/Public/more_page.dart';
import 'package:nodle/PresentationLayer/Screens/Public/notification_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _HomeState();
}

class _HomeState extends State<OnBoarding> {
  int selected_item = 0;
  List<Widget> homeWidget = [
    More_Page(),
    Notification_Page(),
    Favorite_Page(),
    Home_Page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontFamily: "Cairo"),
          unselectedLabelStyle: TextStyle(fontFamily: "Cairo"),
          backgroundColor: AppColors.blue,
          currentIndex: selected_item,
          onTap: (index) {
            setState(() {
              selected_item = index;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.5),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: AppColors.blue,
                icon: Icon(Icons.message_sharp),
                label: "المزيد"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "الإشعارات"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "المفضلة",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          ]),
      body: homeWidget.elementAt(selected_item),
    );
  }
}
