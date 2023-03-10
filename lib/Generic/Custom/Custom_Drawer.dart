import 'package:bank_sathi/Screens/My_Profile/MyProfile.dart';
import 'package:bank_sathi/Screens/WellnessCorner/Wellness_ComingSoon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bank_sathi/Controller/AccountController.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/HealthInsureSupportMainScreen.dart';
import 'package:bank_sathi/Screens/OnBoarding/WebViewScreen.dart';
import 'package:bank_sathi/Screens/SignUp/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:store_redirect/store_redirect.dart';

class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  var AccountController = Get.put(MyAccountProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 33.5.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(6), bottomRight: Radius.circular(6))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(1.h),
            decoration: BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.close_outlined,
                          color: mainBlue,
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 6.0.h,
                        width: 6.0.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: Color(0xffe4e4e4)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FutureBuilder(
                            future: AccountController.UserDetailsFunction(),
                            builder: (BuildContext context,
                                AsyncSnapshot<dynamic> snapshot) {
                              return SizedBox(
                                width: 20.h,
                                child: CommonText(
                                  label: '${AccountController.profileFullName}',
                                  maxLines: 1,
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Nunito Sans',
                                      color: Color(0xff333333)),
                                ),
                              );
                            },
                          ),
                          // CommonText(
                          //   label: 'Edit Your Profile',
                          //   maxLines: 1,
                          //   textStyle: TextStyle(
                          //       fontWeight: FontWeight.w400,
                          //       fontSize: 10.sp,
                          //       fontFamily: 'Nunito Sans',
                          //       color: Color(0xff021B8D)),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Padding(
            padding: EdgeInsets.all(1.2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(MyProfile(), transition: transitoineffect);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Profile.svg',
                        color: mainBlue,
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Profile',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 4.5.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      HealthInsureSupportMainScreen(),
                      transition: transitoineffect,
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Health Insurance Support.svg',
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Health Insurance Support',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 4.2.h,
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(
                    //   WellnessCorner(),
                    //   transition: transitoineffect,
                    // );
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return WellnessComingSoon();
                        },
                      );
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Wellness Support.svg',
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Wellness Support',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 4.2.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(WebviewScreen(
                        url: 'https://www.banksathi.com/terms.html',
                        labelname: 'Terms & Condition'));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Terms and Conditions.svg',
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Terms and Conditions',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 4.2.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(WebviewScreen(
                      labelname: 'Privacy Policy',
                      url: 'https://www.banksathi.com/privacy.html',
                    ));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Privacy Policy.svg',
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Privacy Policy',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 4.2.h,
                ),
                GestureDetector(
                  onTap: () {
                    StoreRedirect.redirect(
                        androidAppId: 'com.medibhai', iOSAppId: '1639780511');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Rate_Us.svg',
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Rate us',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 4.2.h,
                ),
                GestureDetector(
                  onTap: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.clear();
                    setState(() {
                      Get.offAll(LoginScreen(), transition: transitoineffect);
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/Images/Logout.svg',
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                      CommonText(
                        label: 'Logout',
                        textStyle: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
