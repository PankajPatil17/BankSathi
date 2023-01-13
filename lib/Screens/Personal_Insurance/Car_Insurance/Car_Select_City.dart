// ignore_for_file: deprecated_member_use

import 'package:bank_sathi/Controller/PersonalHealthInsurerController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Generic/Custom_Alert_Dialogue/Custom_Rto_Number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CarSelectCity extends StatefulWidget {
  CarSelectCity({super.key});

  @override
  State<CarSelectCity> createState() => _CarSelectCityState();
}

class _CarSelectCityState extends State<CarSelectCity> {
  var HealthInsurerController = Get.put(PersonalHealthInsurerController());
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PWhite,
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
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.black,
                    )),
                SvgPicture.asset('assets/Images/BankSathi.svg'),
              ],
            ),
          )),
          preferredSize: Size(100.h, 20.h)),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.h,
              padding: EdgeInsets.all(1.2.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(
                      titleLabel: 'Search your City and RTO',
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5.h, bottom: 4.5.h),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(6),
                        shadowColor: Color(0xffD1F1FF),
                        child: TextFormField(
                          controller: search,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Please Enter Your Car Number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 6),
                              fillColor: PWhite,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey.shade50,
                                ),
                              ),
                              suffixIcon: search.text == ''
                                  ? IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.search))
                                  : IconButton(
                                      onPressed: () {
                                        search.clear();
                                      },
                                      icon: Icon(Icons.clear_sharp)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey.shade100,
                                ),
                              ),
                              hintText: 'Search city or RTO',
                              hintStyle: labelTextStyleGreyReguler16),
                        ),
                      ),
                    ),
                    Center(
                      child: CommonTextNunito(
                        label: 'OR',
                        fontw8: FontWeight.w600,
                        size: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 2.2.h,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      controller: ScrollController(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 30.0,
                        childAspectRatio: 1.3,
                      ),
                      itemCount: HealthInsurerController.CityName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              HealthInsurerController.CarCityColorValueIndex =
                                  HealthInsurerController.CityName.indexOf(
                                      HealthInsurerController.CityName[index]);

                              showDialog(
                                context: context,
                                useSafeArea: true,
                                builder: (BuildContext context) {
                                  return SelectRtoNumber(
                                    city:
                                        "${HealthInsurerController.CityName[index]}",
                                  );
                                },
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(2.h),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: commonboxshadowBlue,
                                border: Border.all(
                                    color: HealthInsurerController
                                                .CarCityColorValueIndex ==
                                            HealthInsurerController.CityName
                                                .indexOf(HealthInsurerController
                                                    .CityName[index])
                                        ? Color(0xff4BC4F9)
                                        : Colors.transparent,
                                    width: 1.5),
                                shape: BoxShape.circle),
                            child: CommonTextNunito(
                              label: HealthInsurerController.CityName[index]
                                  .toString(),
                              fontw8: FontWeight.w500,
                              size: 11.sp,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          CommonBottomBar(
            changetabcolor: '',
          )
        ],
      )),
    );
  }
}
