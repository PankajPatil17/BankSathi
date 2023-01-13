// ignore_for_file: deprecated_member_use
import 'package:bank_sathi/Controller/AccountController.dart';
import 'package:bank_sathi/Generic/Common/CommonLoader.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Generic/Custom/Custom_AppBar.dart';
import 'package:bank_sathi/Generic/Custom/Custom_Drawer.dart';
// import 'package:bank_sathi/Screens/My_Profile/My_Health_Record.dart';
import 'package:bank_sathi/Screens/My_Profile/My_Package_Details.dart';
import 'package:bank_sathi/Screens/My_Profile/My_Wallet_Util.dart';
import 'package:bank_sathi/Screens/OnBoarding/WebViewScreen.dart';
import 'package:bank_sathi/Screens/SignUp/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:sizer/sizer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

var changetabcolor;

class _MyProfileState extends State<MyProfile> {
  @override
  void initState() {
    changetabcolor = 'Profile';
    super.initState();
  }

  final AccountController = Get.put(MyAccountProfileController());

  List images = [
    'assets/Images/My_Package_Details.svg',
    'assets/Images/My_Wallet_Utilization.svg',
    // 'assets/Images/My_Order_Details.svg',
    // 'assets/Images/My_Health_Record.svg',
    'assets/Images/Terms_and_Conditions.svg',
    'assets/Images/Privacy_Policy.svg',
    'assets/Images/Rate_Us.svg',
    'assets/Images/Logout.svg',
  ];

  List title = [
    'My Package Details',
    'My Wallet Utilization',
    // 'My Order Details',
    // 'My Health Record',
    'Terms and Conditions',
    'Privacy Policy',
    'Rate Us 5 stars',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PWhite,
      drawer: CustomDrawer(),
      appBar: PreferredSize(
          child: SafeArea(child: CustomAppBar()),
          preferredSize: Size(100.h, 20.h)),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.h,
              child: SingleChildScrollView(
                child: FutureBuilder(
                  future: AccountController.UserDetailsFunction(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    return AccountController.profileEmail == null
                        ? CustomLoader()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: 7.0.h,
                                  width: 7.0.h,
                                  margin: EdgeInsets.only(
                                      top: 2.5.h, bottom: 1.5.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Color(0xffe4e4e4)),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'))),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CommonText(
                                    label:
                                        '${AccountController.profileFullName}',
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/Images/email.svg'),
                                    SizedBox(
                                      width: 1.5.h,
                                    ),
                                    CommonText(
                                      label:
                                          '${AccountController.profileEmail}',
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans'),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/Images/call.svg'),
                                  SizedBox(
                                    width: 1.5.h,
                                  ),
                                  CommonText(
                                    label: '${AccountController.profileMobile}',
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              ListView.builder(
                                controller: ScrollController(),
                                shrinkWrap: true,
                                itemCount: title.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (index == 5) {
                                          Get.offAll(LoginScreen(),
                                              transition: transitoineffect);
                                        } else if (index == 4) {
                                          StoreRedirect.redirect(
                                              androidAppId: 'com.medibhai',
                                              iOSAppId: '1639780511');
                                        } else if (index == 3) {
                                          Get.to(WebviewScreen(
                                            labelname: 'Privacy Policy',
                                            url:
                                                'https://www.banksathi.com/privacy.html',
                                          ));
                                        } else if (index == 2) {
                                          Get.to(WebviewScreen(
                                            labelname: 'Terms & Condition',
                                            url:
                                                'https://www.banksathi.com/terms.html',
                                          ));
                                        }
                                        // else if (index == 2) {
                                        //   Get.to(MyHealthRecord(),
                                        //       transition: transitoineffect);
                                        // }
                                        else if (index == 1) {
                                          Get.to(
                                              MyWalletUtil(
                                                labelname:
                                                    'My Wallet Utilization',
                                              ),
                                              transition: transitoineffect);
                                        } else if (index == 0) {
                                          Get.to(
                                              MyPackageDetails(
                                                labelname: 'My Package Details',
                                              ),
                                              transition: transitoineffect);
                                        }
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2.h),
                                      margin: EdgeInsets.only(
                                          bottom: 1.5.h,
                                          right: 1.5.h,
                                          left: 1.5.h),
                                      decoration: BoxDecoration(
                                        color: PWhite,
                                        boxShadow: commonboxshadow,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset("${images[index]}"),
                                          SizedBox(
                                            width: 1.5.h,
                                          ),
                                          CommonText(
                                            label: "${title[index]}",
                                            textStyle: TextStyle(
                                                fontFamily: 'Nunito Sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11.sp,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                  },
                ),
              ),
            ),
          ),
          CommonBottomBar(changetabcolor: changetabcolor)
        ],
      )),
    );
  }
}
