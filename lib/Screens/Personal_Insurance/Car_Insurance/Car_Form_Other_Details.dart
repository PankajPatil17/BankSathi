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

class CarFormOtherDetails extends StatefulWidget {
  CarFormOtherDetails({super.key});

  @override
  State<CarFormOtherDetails> createState() => _CarFormOtherDetailsState();
}

class _CarFormOtherDetailsState extends State<CarFormOtherDetails> {
  var carinsurancecontroller = Get.put(CarInsuranceController());
  DateTime? _ManufacYr;
  DateTime? _RegDateYr;
  DateTime? _PolicyExpdate;
  void _presentDatePicker1() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _ManufacYr = pickedDate;
      });
    });
  }

  void _presentDatePicker2() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _RegDateYr = pickedDate;
      });
    });
  }

  void _presentDatePicker3() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _PolicyExpdate = pickedDate;
      });
    });
  }

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
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.5.h, top: 1.2.h),
                      child: CommonTextNunito(
                        label:
                            'Fill some more information below so we can provide exact quote.',
                        colorT: Color(0xff313131),
                        fontw8: FontWeight.w600,
                        size: 13.sp,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeaderText(titleLabel: 'Date of Birth'),
                            Container(
                                height: 6.5.h,
                                width: 43.w,
                                decoration: BoxDeco(),
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.5.h, horizontal: 1.3.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _ManufacYr != null
                                          ? _ManufacYr.toString()
                                              .replaceRange(11, 23, '')
                                          : 'Select Date',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _presentDatePicker1();
                                        });
                                      },
                                      child: Icon(
                                        Icons.calendar_today_rounded,
                                        color: Color(0xffb2b2b2),
                                        size: 2.3.h,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          height: 5.5.h,
                          width: 15.h,
                          margin: EdgeInsets.only(top: 2.h, bottom: 3.5.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xff49D49D),
                          ),
                          child: Center(
                            child: CommonText(
                              label: 'View Quotes',
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontFamily: 'Nunito Sans'),
                            ),
                          ),
                        ),
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

  //header Text
  HeaderText({titleLabel}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.5.h, top: 2.2.h),
      child: CommonTextNunito(
        label: titleLabel,
        colorT: Color(0xff313131),
        fontw8: FontWeight.w600,
        size: 12.sp,
      ),
    );
  }

  //commonDecoration
  BoxDeco() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: commonboxshadowBlue);
  }
}
