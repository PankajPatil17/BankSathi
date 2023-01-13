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
  String? CustomerTypeRadioBtn;
  String? LicencevalidityRadioBtn;
  String? ClaimRadioBtn;
  String? PACoverRadioBtn;
  String? OwnerChangeRadioBtn;
  TextEditingController RegNum = TextEditingController();
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
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 221, 241),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.only(
                          bottom: 2.4.h, left: 1.6.h, right: 1.6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HeaderText(titleLabel: 'Manufacture Year'),
                                  Container(
                                      height: 6.5.h,
                                      width: 40.w,
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
                                                : 'MM/YYYY',
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HeaderText(titleLabel: 'Registration Date'),
                                  Container(
                                      height: 6.5.h,
                                      width: 40.w,
                                      decoration: BoxDeco(),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 1.5.h, horizontal: 1.3.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            _RegDateYr != null
                                                ? _RegDateYr.toString()
                                                    .replaceRange(11, 23, '')
                                                : 'DD/MM/YYYY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10.sp,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _presentDatePicker2();
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
                          HeaderText(titleLabel: 'Policy Expiry Date'),
                          Container(
                              height: 6.5.h,
                              width: 100.w,
                              decoration: BoxDeco(),
                              padding: EdgeInsets.symmetric(
                                  vertical: 1.5.h, horizontal: 1.3.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _PolicyExpdate != null
                                        ? _PolicyExpdate.toString()
                                            .replaceRange(11, 23, '')
                                        : 'DD/MM/YYYY',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _presentDatePicker3();
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
                          HeaderText(titleLabel: 'Registration Number'),
                          Container(
                            decoration: BoxDeco(),
                            width: 100.w,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please Enter Registration Number';
                                } else if (val.length < 2) {
                                  return "Please Enter Registration Number";
                                }
                                return null;
                              },
                              controller: RegNum,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                hintText: 'Registration Number',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.sp,
                                    fontFamily: 'Nunito Sans'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 221, 241),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 1.5.h),
                      padding: EdgeInsets.only(
                          bottom: 2.4.h, left: 1.6.h, right: 1.6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderText(titleLabel: 'Customer Type'),
                          SubHeaderText(SubtitleLabel: 'Vehicle Owned By'),
                          Row(
                            children: [
                              Container(
                                width: 32.w,
                                child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("Individual",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "No",
                                  groupValue: CustomerTypeRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      CustomerTypeRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 35.w,
                                child: RadioListTile(
                                  contentPadding:
                                      EdgeInsets.only(right: 0, left: 0.w),
                                  title: Text("Organization",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "yes",
                                  groupValue: CustomerTypeRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      CustomerTypeRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 221, 241),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 1.5.h),
                      padding: EdgeInsets.only(
                          bottom: 2.4.h, left: 1.6.h, right: 1.6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderText(titleLabel: 'Licence validity'),
                          SubHeaderText(
                              SubtitleLabel:
                                  'Do you have a valid driving license?'),
                          Row(
                            children: [
                              Container(
                                width: 32.w,
                                child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "No",
                                  groupValue: LicencevalidityRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      LicencevalidityRadioBtn =
                                          value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 35.w,
                                child: RadioListTile(
                                  contentPadding:
                                      EdgeInsets.only(right: 0, left: 0.w),
                                  title: Text("Yes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "yes",
                                  groupValue: LicencevalidityRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      LicencevalidityRadioBtn =
                                          value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 221, 241),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 1.5.h),
                      padding: EdgeInsets.only(
                          bottom: 2.4.h, left: 1.6.h, right: 1.6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderText(titleLabel: 'PA Cover'),
                          SubHeaderText(
                              SubtitleLabel:
                                  'Do you already have Personal Accidental (PA) cover of Rs 15 lakh ?'),
                          Row(
                            children: [
                              Container(
                                width: 32.w,
                                child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "No",
                                  groupValue: PACoverRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      PACoverRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 35.w,
                                child: RadioListTile(
                                  contentPadding:
                                      EdgeInsets.only(right: 0, left: 0.w),
                                  title: Text("Yes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "yes",
                                  groupValue: PACoverRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      PACoverRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 221, 241),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 1.5.h),
                      padding: EdgeInsets.only(
                          bottom: 2.4.h, left: 1.6.h, right: 1.6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderText(titleLabel: 'Owner Change'),
                          SubHeaderText(
                              SubtitleLabel:
                                  'Owner changed in last 12 months?'),
                          Row(
                            children: [
                              Container(
                                width: 32.w,
                                child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "No",
                                  groupValue: OwnerChangeRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      OwnerChangeRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 35.w,
                                child: RadioListTile(
                                  contentPadding:
                                      EdgeInsets.only(right: 0, left: 0.w),
                                  title: Text("Yes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "yes",
                                  groupValue: OwnerChangeRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      OwnerChangeRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 221, 241),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 1.5.h),
                      padding: EdgeInsets.only(
                          bottom: 2.4.h, left: 1.6.h, right: 1.6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderText(titleLabel: 'Claim'),
                          SubHeaderText(
                              SubtitleLabel: 'Claim made in expiring policy?'),
                          Row(
                            children: [
                              Container(
                                width: 32.w,
                                child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "No",
                                  groupValue: ClaimRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      ClaimRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 35.w,
                                child: RadioListTile(
                                  contentPadding:
                                      EdgeInsets.only(right: 0, left: 0.w),
                                  title: Text("Yes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp,
                                          fontFamily: 'Nunito Sans')),
                                  value: "yes",
                                  groupValue: ClaimRadioBtn,
                                  onChanged: (value) {
                                    setState(() {
                                      ClaimRadioBtn = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          height: 5.5.h,
                          width: 18.h,
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

  //Subheader Text
  SubHeaderText({SubtitleLabel}) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 1.5.h,
      ),
      child: CommonTextNunito(
        label: SubtitleLabel,
        colorT: Color(0xff313131),
        fontw8: FontWeight.w600,
        size: 10.sp,
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
