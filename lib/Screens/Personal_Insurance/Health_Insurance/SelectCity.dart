// ignore_for_file: deprecated_member_use
import 'package:bank_sathi/Controller/PersonalHealthInsurerController.dart';
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/CommonStepperBar.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/SelectMedicalHistory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  var changetabcolor;
  var HealthInsurerController = Get.put(PersonalHealthInsurerController());
  TextEditingController Pincode = TextEditingController();

  @override
  void initState() {
    changetabcolor = 'home';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: SafeArea(
                child: Container(
              height: 7.h,
              width: 100.h,
              padding: EdgeInsets.only(right: 1.2.h),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, 4))
              ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                  SvgPicture.asset('assets/Images/Emedlife.svg'),
                ],
              ),
            )),
            preferredSize: Size(100.h, 20.h)),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderText(
                          titleLabel:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.5.h),
                        child: CommonStepperBar(
                          pageNum: 3,
                        ),
                      ),
                      HeaderText(titleLabel: 'Where do you live?'),
                      Container(
                        height: 6.5.h,
                        width: 100.h,
                        margin: EdgeInsets.symmetric(vertical: 1.2.h),
                        decoration:
                            BoxDecoration(boxShadow: commonboxshadowBlue),
                        child: TextFormField(
                          textInputAction: TextInputAction.search,
                          onFieldSubmitted: (v) {},
                          onChanged: (value) {},
                          controller: Pincode,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 1.h),
                              hintText: 'Pincode',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.sp,
                                  color: Color(0xffb2b2b2),
                                  fontFamily: 'Nunito Sans'),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        controller: ScrollController(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            crossAxisSpacing: 1.9.h,
                            mainAxisSpacing: 1.9.h,
                            mainAxisExtent: 12.h,
                            maxCrossAxisExtent: 100),
                        itemCount: HealthInsurerController.CityName.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                HealthInsurerController.CityColorValueIndex =
                                    HealthInsurerController.CityName.indexOf(
                                        HealthInsurerController
                                            .CityName[index]);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: commonboxshadowBlue,
                                  border: Border.all(
                                      color: HealthInsurerController
                                                  .CityColorValueIndex ==
                                              HealthInsurerController.CityName
                                                  .indexOf(
                                                      HealthInsurerController
                                                          .CityName[index])
                                          ? Color(0xff4BC4F9)
                                          : Colors.transparent,
                                      width: 1.2),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: CommonTextNunito(
                                  label: HealthInsurerController.CityName[index]
                                      .toString(),
                                  fontw8: FontWeight.w500,
                                  size: 11.sp,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SelectMedicalHistory());
                        },
                        child: Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 3.h, bottom: 2.5.h),
                              height: 6.h,
                              width: 15.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  gradient: LinearGradient(colors: [
                                    Color(0xff4BC4F9),
                                    Color(0xff4BC4F9),
                                  ])),
                              child: CommonTextNunito(
                                label: 'Next',
                                colorT: Colors.white,
                                fontw8: FontWeight.w500,
                                size: 12.sp,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CommonBottomBar(changetabcolor: changetabcolor)
          ],
        )));
  }

//header Text
  HeaderText({titleLabel}) {
    return CommonTextNunito(
      label: titleLabel,
      colorT: Color(0xff6B6B6B),
      fontw8: FontWeight.w400,
      size: 13.sp,
    );
  }
}
