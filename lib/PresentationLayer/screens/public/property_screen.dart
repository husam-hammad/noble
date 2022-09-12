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
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("شراء العقار", style: white18NoBold),
                )),
              ),
            ),
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  bottom: PreferredSize(child: Container(child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                  )),width: double.infinity,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),), preferredSize: Size.fromHeight(0)),
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar( title:  Padding(
                    padding: const EdgeInsets.only(bottom:5.0),
                    child: Text("فيلا للبيع في دمشق",style: white18NoBold,),
                  ),centerTitle: true,
                    
                    background: Container(
                      child: Stack(fit: StackFit.expand, children: [
                        Image.asset(
                          "assets/images/house1.png",
                          fit: BoxFit.cover,
                        ),
                        Container(color: const Color(0XFF0F2E62).withAlpha(75))
                      ]),
                    ),
                  ),
                  backgroundColor: AppColors.blue2,
                  expandedHeight: 250,
                  actions: [
                    const Icon(Icons.chevron_right,
                        size: 30, color: AppColors.lightwhite),
                    const SizedBox(
                      width: 12,
                    )
                  ],
                  leading: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: const Icon(Icons.favorite_border,
                        size: 30, color: AppColors.lightwhite),
                  ),
                ),
                buildBody()
              ],
            ),
          )),
    );
  }
}

int whatch_number = 100;

Widget buildBody() => SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 25),
          Row(
            children: [
              const Text("مواصفات العقار", style: MediumeBlueArabic),
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
                    "$whatch_number",
                    style: SmallGreyTextArabicNoBold,
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
                color: const Color(0XFFBEBEBE),
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "130.000.000",
                style: TitleGreyArabic,
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.ac_unit_outlined,
                    color: AppColors.orange,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text("700", style: SmallBlueTextArabic)
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.ac_unit_outlined,
                    color: AppColors.orange,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text("شرقي", style: SmallBlueTextArabic)
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.ac_unit_outlined,
                    color: AppColors.orange,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text("5 غرف", style: SmallBlueTextArabic)
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.ac_unit_outlined,
                    color: AppColors.orange,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text("حمام 2", style: SmallBlueTextArabic)
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
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("مكتب الشام", style: blue18NoBold),
                    Text("عارض الإعلان", style: SmallGreyTextArabicNoBold)
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
          const Text(
            "وصف العقار",
            style: MediumeBlueArabic,
          ),
          const SizedBox(height: 15),
          TextFormField(
            minLines: 1,
            maxLines: 10,
            style: SmallBlueTextArabic,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide.none),
                hintText:
                    "هنا نكتب مواصفات العقار أو نبذة تعريفيه عنه\nوعن مكوناته وموقعه",
                hintStyle: SmallGreyTextArabicNoBold),
          ),
          const SizedBox(height: 200)
        ]),
      ),
    );
