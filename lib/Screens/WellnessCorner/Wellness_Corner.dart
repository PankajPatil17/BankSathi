import 'package:bank_sathi/Screens/WellnessCorner/ActivePackageDetails.dart';
import 'package:bank_sathi/Screens/WellnessCorner/Wellness_ComingSoon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/AccountController.dart';
import 'package:bank_sathi/Controller/HomePageController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:sizer/sizer.dart';

class WellnessCorner extends StatefulWidget {
  const WellnessCorner({super.key});

  @override
  State<WellnessCorner> createState() => _WellnessCornerState();
}

var changetabcolor;

class _WellnessCornerState extends State<WellnessCorner> {
  @override
  void initState() {
    changetabcolor = 'home';
    super.initState();
  }

  var HomeController = Get.put(HomePageController());
  var AccountController = Get.put(MyAccountProfileController());

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
                BackButton(
                  color: Color(0xff2479ab),
                ),
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
              padding: EdgeInsets.only(top: 1.5.h, left: 1.5.h, right: 1.5.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      label: 'Active Packages',
                      textStyle: labelTextStyleBlackReguler19,
                    ),
                    ActivePackageCard(),
                    MediBhaiModules(),
                    SizedBox(
                      height: 2.2.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          CommonBottomBar(changetabcolor: changetabcolor)
        ],
      )),
    );
  }

//CARD DETAILS

  ActivePackageCard() {
    return Container(
      width: 100.h,
      padding: EdgeInsets.all(3.h),
      height: 23.h,
      margin: EdgeInsets.only(bottom: 3.h, top: 1.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/Images/Active_Package_Card.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 27.h,
            child: CommonText(
              label: 'Gold Package',
              maxLines: 1,
              textStyle: TextStyle(
                  color: mainBlue,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp),
            ),
          ),
          Spacer(),
          SizedBox(
            width: 27.h,
            child: FutureBuilder(
              future: AccountController.UserDetailsFunction(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return CommonText(
                  label: '${AccountController.profileFullName}',
                  maxLines: 1,
                  textStyle: TextStyle(
                      color: mainBlue,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp),
                );
              },
            ),
          ),
          SizedBox(
            height: 1.3.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonText(
                label: 'Valid till',
                textStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito Sans',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 1.h,
              ),
              SizedBox(
                width: 27.h,
                child: CommonText(
                  label: '12/2023',
                  maxLines: 1,
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                HomeController.ActivepackagesDetails(id: 9.toString());
                Get.to(
                    ActicePackagesDetails(
                        id: 9.toString(), packageName: 'Gold Package'),
                    duration: Duration(milliseconds: 700),
                    transition: Transition.leftToRightWithFade);
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 4.h,
              margin: EdgeInsets.only(top: 1.h),
              width: 12.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF1ba8d3), Color(0xFF39f1e0)]),
                  borderRadius: BorderRadius.circular(6)),
              child: CommonText(
                label: 'View Details',
                textStyle: labelTextStyleWhiteReguler14,
              ),
            ),
          )
        ],
      ),
    );
  }

// 6 MODULES CLAIMS
  MediBhaiModules() {
    return Container(
      padding: EdgeInsets.all(2.h),
      margin: EdgeInsets.only(bottom: 2.5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/Images/Wellness_Background.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return WellnessComingSoon();
                      },
                    );
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 0.8.h),
                      decoration: BoxDecoration(
                          color: PWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: Center(
                        child: SvgPicture.asset(
                          height: 4.h,
                          'assets/Images/Teleconsult.svg',
                        ),
                      ),
                    ),
                    Text(
                      '  Teleconsult',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return WellnessComingSoon();
                      },
                    );
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 0.8.h),
                      decoration: BoxDecoration(
                          color: PWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: Center(
                        child: SvgPicture.asset('assets/Images/Medicine.svg'),
                      ),
                    ),
                    Text(
                      'Medicine',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return WellnessComingSoon();
                      },
                    );
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 0.8.h),
                      decoration: BoxDecoration(
                          color: PWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: Center(
                        child:
                            SvgPicture.asset('assets/Images/Diagnostics.svg'),
                      ),
                    ),
                    Text(
                      'Diagnostics',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return WellnessComingSoon();
                      },
                    );
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 0.8.h),
                      decoration: BoxDecoration(
                          color: PWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: Center(
                        child: SvgPicture.asset(
                            height: 4.h, 'assets/Images/Doctor.svg'),
                      ),
                    ),
                    Text(
                      'Find Doctor',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return WellnessComingSoon();
                      },
                    );
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 0.8.h),
                      decoration: BoxDecoration(
                          color: PWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: Center(
                        child: SvgPicture.asset(
                            height: 4.h, 'assets/Images/hospital.svg'),
                      ),
                    ),
                    Text(
                      'Find Hospital',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return WellnessComingSoon();
                      },
                    );
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 0.8.h),
                      decoration: BoxDecoration(
                          color: PWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: Center(
                        child: SvgPicture.asset('assets/Images/Nutrition.svg'),
                      ),
                    ),
                    Text(
                      'Nutrition',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
