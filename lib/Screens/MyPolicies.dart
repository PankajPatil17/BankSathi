// ignore_for_file: deprecated_member_use
import 'package:bank_sathi/Generic/Custom/Custom_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPolicies extends StatefulWidget {
  const MyPolicies({super.key});

  @override
  State<MyPolicies> createState() => _MyPoliciesState();
}

var changetabcolor;

class _MyPoliciesState extends State<MyPolicies> {
  var HealthInauranceController = Get.put(HealthInsuranceSupportController());
  @override
  void initState() {
    changetabcolor = 'Policies';
    super.initState();
  }

  List corporate = [
    'GMC',
    'GPA',
    'GTL',
  ];

  List personal = [
    'Health Policy',
    'Life Policy',
    'Car Policy',
  ];

  List Files = [
    'https://devops.medibhai.com/uploads/policycopy/D600082043_digit.pdf',
    'https://devops.medibhai.com/uploads/policycopy/D600082043_digit.pdf',
    'https://devops.medibhai.com/uploads/policycopy/D600082043_digit.pdf',
  ];

  var _url;
  Future<void> _launchUrl(url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PWhite,
      appBar: PreferredSize(
          child: SafeArea(child: CustomAppBar()),
          preferredSize: Size(100.h, 20.h)),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // padding: EdgeInsets.all(1.6.h),
              width: 100.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 2.5.h),
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/Images/My_Corporate_Policies.svg',
                                color: Color(0xff021B8D),
                              ),
                              SizedBox(
                                width: 1.5.h,
                              ),
                              CommonText(
                                label: 'My Corporate Policies',
                                textStyle: TextStyle(
                                    color: Color(0xff021B8D),
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          ListView.builder(
                            itemCount: corporate.length,
                            controller: ScrollController(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _url = Uri.parse(Files[index]);
                                    Future.delayed(Duration(milliseconds: 100),
                                        () {
                                      _launchUrl(_url);
                                    });
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(2.h),
                                  margin: EdgeInsets.only(top: 1.5.h),
                                  decoration: BoxDecoration(
                                    color: PWhite,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: commonboxshadow,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 1.h),
                                          height: 3.h,
                                          width: 3.h,
                                          child: Icon(
                                            Icons.picture_as_pdf_rounded,
                                            color: Colors.red,
                                          )),
                                      SizedBox(
                                        width: 1.5.h,
                                      ),
                                      CommonText(
                                        label: corporate[index],
                                        textStyle: TextStyle(
                                            color: Color(0xff363636),
                                            fontFamily: 'Nunito Sans',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Spacer(),
                                      SvgPicture.asset(
                                        'assets/Images/downloading.svg',
                                        color: Color(0xff4BC4F9),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.5.h),
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/Images/My_Personal_Policies.svg',
                                color: Color(0xff021B8D),
                              ),
                              SizedBox(
                                width: 1.5.h,
                              ),
                              CommonText(
                                label: 'My Personal Policies',
                                textStyle: TextStyle(
                                    color: Color(0xff021B8D),
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          ListView.builder(
                            itemCount: personal.length,
                            controller: ScrollController(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _url = Uri.parse(Files[index]);
                                    Future.delayed(Duration(milliseconds: 100),
                                        () {
                                      _launchUrl(_url);
                                    });
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(2.h),
                                  margin: EdgeInsets.only(top: 1.5.h),
                                  decoration: BoxDecoration(
                                    color: PWhite,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: commonboxshadow,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 1.h),
                                          height: 3.h,
                                          width: 3.h,
                                          child: Icon(
                                            Icons.picture_as_pdf_rounded,
                                            color: Colors.red,
                                          )),
                                      SizedBox(
                                        width: 1.5.h,
                                      ),
                                      CommonText(
                                        label: personal[index],
                                        textStyle: TextStyle(
                                            color: Color(0xff363636),
                                            fontFamily: 'Nunito Sans',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Spacer(),
                                      SvgPicture.asset(
                                        'assets/Images/downloading.svg',
                                        color: Color(0xff4BC4F9),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
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
}
