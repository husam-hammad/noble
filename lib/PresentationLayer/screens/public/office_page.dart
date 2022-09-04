import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nodle/Constants/colors.dart';

class Office_Page extends StatelessWidget {
  const Office_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: AppColors.lightwhite,
                            size: 40,
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.chevron_right,
                              color: AppColors.lightwhite,
                              size: 40,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                    Center(
                        child: Column(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/office.png"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Alsham Realestate",
                        style: TextStyle(
                            color: AppColors.lightwhite, fontSize: 17),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Damascus",
                        style: TextStyle(color: AppColors.lightwhite),
                      ),
                    ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("1K",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.lightwhite,
                                    fontSize: 30)),
                            Text("Followers",
                                style: TextStyle(color: AppColors.lightwhite)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("200",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.lightwhite,
                                    fontSize: 30)),
                            Text("Property",
                                style: TextStyle(color: AppColors.lightwhite)),
                          ],
                        ),
                      ],
                    )
                  ]),
            ),
            flex: 1,
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: Container(
                      child: Column(children: [
                        Container(
                          height: 90,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0XFFEDF1FD)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(children: [
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Address",
                                        style:
                                            TextStyle(color: AppColors.blue)),
                                    Text("Damascus, Salhiya",
                                        style: TextStyle(
                                            color: Color(0XFF8B8B8B))),
                                  ]),
                              Spacer(),
                              Icon(
                                Icons.location_on,
                                color: AppColors.blue,
                                size: 35,
                              )
                            ]),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("آخر العقارات",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blue)),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/house4.png"),
                            radius: 25,
                          ),
                          title: Text(
                            "فيلا للبيع",
                            style:
                                TextStyle(color: AppColors.blue, fontSize: 18),
                          ),
                          subtitle: Text(
                            "1,300,000",
                            style: TextStyle(
                                color: Color(0XFFD2D2D2), fontSize: 14),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/house1.png"),
                            radius: 25,
                          ),
                          title: Text("فيلا للبيع"),
                          subtitle: Text("1,300,000"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/house2.png"),
                            radius: 25,
                          ),
                          title: Text("فيلا للبيع"),
                          subtitle: Text("1,300,000"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/house3.png"),
                            radius: 25,
                          ),
                          title: Text("Damas"),
                          subtitle: Text("1,300,000"),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
