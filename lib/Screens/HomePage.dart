import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Generic/Custom/Custom_AppBar.dart';
import 'package:bank_sathi/Generic/Custom/Custom_Wellness_Package.dart';
import 'package:bank_sathi/Screens/EmployeeBenefitProgram/EmpBenProgram.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/HealthInsureSupportMainScreen.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Car_Insurance/Car_Insurance_Home.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/HealthInsurerGroupsMainScreenFirst.dart';
import 'package:bank_sathi/Screens/WellnessCorner/Wellness_ComingSoon.dart';
import 'package:bank_sathi/Controller/AccountController.dart';
import 'package:bank_sathi/Controller/HomePageController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Custom/Custom_Drawer.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

var changetabcolor;

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    changetabcolor = 'Home';
    super.initState();
  }

  var AccountController = Get.put(MyAccountProfileController());
  var HomeController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      drawer: CustomDrawer(),
      appBar: PreferredSize(
          child: SafeArea(child: CustomAppBar()),
          preferredSize: Size(
            100.h,
            7.h,
          )),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BannerImages(),
                    EmployeeSupport(),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    // EmpBenFitPro(),
                    PersonalInsurance(),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    // SecondBanner(),
                    WellnessCornerModule(),
                    // ActivatePackage(),
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

  BannerImages() {
    return Container(
      margin:
          EdgeInsets.only(bottom: 2.2.h, left: 1.5.h, right: 1.5.h, top: 2.2.h),
      height: 19.h,
      width: 70.h,
      // decoration: BoxDecoration(boxShadow: [
      //   BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      // ]),
      child: CarouselSlider.builder(
        itemCount: HomeController.BannerImages.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            width: 100.h,
            decoration: BoxDecoration(
                // color: Colors.white,
                // borderRadius: BorderRadius.circular(6),
                ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                "${HomeController.BannerImages[index]}",
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          pauseAutoPlayOnManualNavigate: true,
          pauseAutoPlayOnTouch: true,
          viewportFraction: 1,
          aspectRatio: 16 / 9,
          enlargeCenterPage: true,
          initialPage: 0,
          autoPlayInterval: Duration(seconds: 4),
        ),
      ),
    );
  }

  // Employee Benefit Support

  EmployeeSupport() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 225, 211, 245),
            Color.fromARGB(255, 253, 252, 255)
          ]),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
          ]),
      padding: EdgeInsets.all(2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                label: 'Employee Benefit Support',
                textStyle: labelTextStyleBlackMedium16,
              ),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(HealthInsureSupportMainScreen(),
              //         transition: transitoineffect);
              //   },
              //   child: CommonText(
              //     label: 'View',
              //     textStyle: labelTextStyleGreyReguler14,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 2.2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(HealthInsureSupportMainScreen(),
                      transition: transitoineffect);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/Images/Group_mediclaim.svg',
                      color: Color.fromARGB(255, 101, 63, 154),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Group\nMediclaim',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(HealthInsureSupportMainScreen(),
                      transition: transitoineffect);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/Images/Group_accident.svg',
                      color: Color.fromARGB(255, 101, 63, 154),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Group\nAccident',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(HealthInsureSupportMainScreen(),
                      transition: transitoineffect);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/Images/view_all.svg',
                      color: Color.fromARGB(255, 101, 63, 154),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'View\nAll',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
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

// Active Package Card

  ActivatePackage() {
    return Container(
      padding: EdgeInsets.all(2.h),
      margin: EdgeInsets.only(top: 2.5.h, bottom: 2.5.h),
      decoration: BoxDecoration(color: Color(0xffE2F5FF), boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/Images/credit-card.svg',
            height: 4.h,
            width: 4.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
              child: Text(
                'Activate your health care package',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: mainBlue,
                    fontFamily: 'Nunito Sans',
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            width: 12.h,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff44CC75), shape: StadiumBorder()),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ActivewellnesPackage();
                    },
                  );
                },
                child: Text(
                  'Activate Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Nunito Sans',
                      fontSize: 9.sp),
                )),
          )
        ],
      ),
    );
  }

  EmpBenFitPro() {
    return GestureDetector(
      onTap: () {
        Get.to(EmpBenProgram(), transition: transitoineffect);
      },

      child: Container(
        margin: EdgeInsets.only(top: 1.5.h, bottom: 2.h),
        width: 100.h,
        padding: EdgeInsets.only(left: 1.3.h, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(color: Color(0xffE3FFFA), boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
        ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/Images/enrollment.svg'),
            SizedBox(
              width: 2.2.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Complete your enrollment',
                  maxLines: 1,
                  style: TextStyle(
                      color: Color(0xff021B8D),
                      fontSize: 10.sp,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 23.h,
                  child: Text(
                    'Click on the tab to view, add & validate your dependent details',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xff6B6B6B),
                        fontSize: 9.sp,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(1.h),
              alignment: Alignment.center,
              // width: 20.h,
              decoration: BoxDecoration(
                  color: Color(0xff00C6B4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enroll Now',
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 9.sp,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 1.2.h,
                  ),
                  SvgPicture.asset('assets/Images/right-arrow.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
      // child: Container(
      //   padding: EdgeInsets.all(1.5.h),
      //
      //   decoration: BoxDecoration(color: Color(0xffE2F5FF), boxShadow: [
      //     BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      //   ]),
      //   child:
      //       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      //     SizedBox(
      //       width: 62.w,
      //       child: Text(
      //         'Complete Your Enrollment',
      //         maxLines: 1,
      //         overflow: TextOverflow.ellipsis,
      //         style: TextStyle(
      //             color: mainBlue,
      //             fontFamily: 'Nunito Sans',
      //             fontSize: 9.sp,
      //             fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     SizedBox(
      //       width: 12.h,
      //       child: TextButton(
      //           style: TextButton.styleFrom(
      //               backgroundColor: Colors.green.shade500,
      //               shape: StadiumBorder()),
      //           onPressed: () {
      //             Get.to(EmpBenProgram(), transition: transitoineffect);
      //           },
      //           child: Text(
      //             'Activate Now',
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontFamily: 'Nunito Sans',
      //                 fontSize: 9.sp),
      //           )),
      //     )
      //   ]),
      // ),
    );
  }

// Personal Insurance

  PersonalInsurance() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 195, 235, 219),
            Color(0xffFFFFFF),
          ]),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
          ]),
      padding: EdgeInsets.all(2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                label: 'Personal Insurance',
                textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp),
              ),
            ],
          ),
          SizedBox(
            height: 2.2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(CarInsuranceHomePage(), transition: transitoineffect);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Car.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Car',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(HealthInsurerGroupsMainScreenFirst(),
                      transition: transitoineffect);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Health.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Health',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(HealthInsurerGroupsMainScreenFirst(),
                      transition: transitoineffect);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Healthtop.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Healthtop',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Life.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Life',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
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

  SecondBanner() {
    return Container(
      margin: EdgeInsets.only(bottom: 2.2.h, top: 2.2.h),
      height: 12.h,
      width: 70.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      ]),
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            width: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: SvgPicture.asset(
                'assets/Images/Home_Banner2.svg',
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: false,
          pauseAutoPlayOnManualNavigate: true,
          pauseAutoPlayOnTouch: true,
          viewportFraction: 1,
          aspectRatio: 16 / 9,
          initialPage: 0,
          autoPlayInterval: Duration(hours: 4),
        ),
      ),
    );
  }

// Wellness corner

  WellnessCornerModule() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      ]),
      padding: EdgeInsets.all(2.h),
      margin: EdgeInsets.only(bottom: 2.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                label: 'Wellness corner',
                textStyle: labelTextStyleBlackMedium16,
              ),
              // GestureDetector(
              //   onTap: () {
              //     // Get.to(WellnessCorner(), transition: transitoineffect);
              //     setState(() {
              //       showDialog(
              //         context: context,
              //         builder: (BuildContext context) {
              //           return WellnessComingSoon();
              //         },
              //       );
              //     });
              //   },
              //   child: CommonText(
              //     label: 'View',
              //     textStyle: labelTextStyleGreyReguler14,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 2.2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // Get.to(WellnessCorner(), transition: transitoineffect);
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Teleconsult.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Teleconsult',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(WellnessCorner(), transition: transitoineffect);
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Medicine.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Medicine',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(WellnessCorner(), transition: transitoineffect);
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Diagnostics.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Diagnostics',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(WellnessCorner(), transition: transitoineffect);
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Images/Nutrition.svg'),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Nutrition',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600),
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
