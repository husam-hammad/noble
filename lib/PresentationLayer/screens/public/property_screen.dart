import 'package:flutter/material.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';

class Property_Screen extends StatelessWidget {
  const Property_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Hero(
          tag: 'property_hero',
          child: Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("شراء العقار",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Cairo",
                        color: AppColors.lightwhite,
                      )),
                )),
              ),
            ),
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("فيلا للبيع في دمشق",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 12,
                          color: Colors.white,
                        )),
                    background: Container(
                      child: Stack(fit: StackFit.expand, children: [
                        Image.asset(
                          "assets/images/house1.png",
                          fit: BoxFit.cover,
                        ),
                        Container(color: Color(0XFF0F2E62).withAlpha(75))
                      ]),
                    ),
                  ),
                  backgroundColor: AppColors.blue2,
                  expandedHeight: 250,
                  actions: [
                    Icon(Icons.chevron_right,
                        size: 40, color: AppColors.lightwhite),
                    SizedBox(
                      width: 12,
                    )
                  ],
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.favorite_border,
                        size: 40, color: AppColors.lightwhite),
                  ),
                ),
                buildBody()
              ],
            ),
          )),
    );
  }
}

Widget buildBody() => SliverToBoxAdapter(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 25),
              Row(
                children: [
                  Text("مواصفات العقار",
                      style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo",
                          fontSize: 20)),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        size: 12,
                        color: Color(0XFFBEBEBE),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "100",
                        style: TextStyle(color: Color(0XFFB3B3B3)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(
                    Icons.sell,
                    color: Color(0XFFBEBEBE),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "130.000.000",
                    style: TextStyle(fontSize: 30, color: Color(0XFFBEBEBE)),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit_outlined,
                        color: AppColors.orange,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("700", style: SmallTextArabic)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit_outlined,
                        color: AppColors.orange,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("شرقي", style: SmallTextArabic)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit_outlined,
                        color: AppColors.orange,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("5 غرف", style: SmallTextArabic)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit_outlined,
                        color: AppColors.orange,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("حمام 2", style: SmallTextArabic)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.grey)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          "assets/images/office.png",
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.grey)),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("مكتب الشام",
                            style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Cairo",
                            )),
                        Text("عارض الإعلان",
                            style: TextStyle(color: AppColors.grey))
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.phone,
                      color: AppColors.blue,
                      size: 25,
                    )
                  ]),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "وصف العقار",
                style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 18,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              TextFormField(
                minLines: 1,
                maxLines: 10,
                style: SmallTextArabic,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText:
                        "هنا نكتب مواصفات العقار أو نبذة تعريفيه عنه\nوعن مكوناته وموقعه",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                    )),
              ),
              SizedBox(height: 200)
            ]),
          )),
    );
