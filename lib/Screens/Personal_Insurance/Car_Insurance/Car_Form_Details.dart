// ignore_for_file: deprecated_member_use

import 'package:bank_sathi/Controller/CarInsurance_Controller.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Car_Insurance/Car_Insurance_Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CarFormDetails extends StatefulWidget {
  CarFormDetails({super.key});

  @override
  State<CarFormDetails> createState() => _CarFormDetailsState();
}

class _CarFormDetailsState extends State<CarFormDetails> {
  var carinsurancecontroller = Get.put(CarInsuranceController());
  TextEditingController search = TextEditingController();
  String? year;
  List YearList = [
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
  ];

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
              padding: EdgeInsets.all(1.9.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.h,
                      decoration: BoxDecoration(
                          boxShadow: commonboxshadowBlue,
                          borderRadius: BorderRadius.circular(6),
                          color: PWhite),
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.5.h, left: 1.5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HONDA BRIO 1.2 V (MT)\n(CC- 1198)- PETROL',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp,
                                color: Color(0xff021B8D),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.offAll(CarInsuranceHomePage());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 1.0.h,
                                        bottom: 1.0.h,
                                        left: 1.8.h,
                                        right: 1.8.h),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xffA882DD),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(6),
                                            topLeft: Radius.circular(6))),
                                    child: CommonTextNunito(
                                      colorT: PWhite,
                                      label: 'Edit',
                                      fontw8: FontWeight.w400,
                                      size: 10.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 2.5.h),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CommonTextNunito(
                          label: 'Registration Year',
                          fontw8: FontWeight.w500,
                          size: 12.sp,
                          colorT: PBlack,
                        ),
                        Spacer(),
                        Container(
                          height: 5.h,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 2.h),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: commonboxshadowBlue),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 1.h, right: 1.h, top: 0.9.h),
                            child: DropdownButton(
                                focusColor: Colors.white,
                                menuMaxHeight: 300.0,
                                isExpanded: true,
                                isDense: true,
                                hint: CommonText(
                                  label: 'Registration',
                                  textStyle: labelTextStyleGreyReguler14,
                                ),
                                underline: Container(
                                  color: Colors.white,
                                ),
                                value: year,
                                items: YearList.map((item) {
                                  return DropdownMenuItem(
                                      enabled: true,
                                      onTap: () {},
                                      value: item.toString(),
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            fontFamily: 'Nunito Sans',
                                            overflow: TextOverflow.ellipsis),
                                      ));
                                }).toList(),
                                onChanged: (String? _v) {
                                  setState(() {
                                    year = _v!;
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 100.h,
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(209, 245, 219, 245)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonTextNunito(
                            label: 'Previous Insurer and Policy Expiry',
                            fontw8: FontWeight.w500,
                            size: 12.sp,
                            overflow: TextOverflow.ellipsis,
                            maxline: 1,
                            colorT: Color(0xffA882DD),
                          )
                        ],
                      ),
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
