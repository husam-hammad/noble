import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/DataAccessLayer/Models/office.dart';

import '../../BusinessLayer/Controllers/property_controller.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../../DataAccessLayer/Models/property.dart';
import '../Screens/Public/property_screen.dart';

class SliverAppBarProperty extends StatelessWidget {
  final Property propety;
  final Office office;
  const SliverAppBarProperty(
      {Key? key, required this.propety, required this.office})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertyController>(
        init: proController,
        builder: (_) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                bottom: PreferredSize(
                    child: Container(
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                      )),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                    ),
                    preferredSize: const Size.fromHeight(0)),
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      propety.name,
                      style: white18NoBold,
                    ),
                  ),
                  centerTitle: true,
                  background: Stack(fit: StackFit.expand, children: [
                    Image.network(
                      propety.image,
                      fit: BoxFit.cover,
                    ),
                    Container(color: const Color(0XFF0F2E62).withAlpha(75))
                  ]),
                ),
                backgroundColor: AppColors.blue2,
                expandedHeight: 250,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.chevron_right,
                        size: 30, color: AppColors.lightwhite),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  )
                ],
                leading: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(Icons.favorite_border,
                      size: 30, color: AppColors.lightwhite),
                ),
              ),
              SliverToBoxAdapter(
                child: GetBuilder<PropertyController>(
                    init: proController,
                    builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  Text("realstate_specifications".tr,
                                      style: blue18NoBold),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.remove_red_eye,
                                        size: 12,
                                        color: Color(0XFFBEBEBE),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        propety.views.toString(),
                                        style: grey15ArabicNoBold,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.sell,
                                    color: Color(0XFFBEBEBE),
                                    size: 25,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    proController.properties[0].price,
                                    style: grey18ArabicNoBold,
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.home,
                                        color: AppColors.orange,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(proController.properties[0].space,
                                          style: blue15ArabicNoBold)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.open_with,
                                        color: AppColors.orange,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(location, style: blue15ArabicNoBold)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.single_bed,
                                        color: AppColors.orange,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(propety.rooms.toString(),
                                          style: blue15ArabicNoBold)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.bathtub_sharp,
                                        color: AppColors.orange,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(propety.baths.toString(),
                                          style: blue15ArabicNoBold)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: AppColors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        child: Image.network(
                                          office.logo,
                                          fit: BoxFit.fill,
                                        ),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            border: Border.all(
                                                color: AppColors.grey)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(office.name, style: blue18NoBold),
                                        Text(adViewer,
                                            style: grey15ArabicNoBold)
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.phone,
                                      color: AppColors.blue,
                                      size: 25,
                                    )
                                  ]),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "about_realstate".tr,
                                style: blue18NoBold,
                              ),
                              const SizedBox(height: 15),
                              TextFormField(
                                minLines: 1,
                                maxLines: 10,
                                style: blue15TextArabicBold,
                                decoration: InputDecoration(
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintText: "hint_realstate".tr,
                                    hintStyle: grey15ArabicNoBold),
                              ),
                              const SizedBox(height: 200)
                            ]),
                      );
                    }),
              )
            ],
          );
        });
  }
}
