// ignore_for_file: deprecated_member_use
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/HealthInsureCarousel.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/IntimateClaim.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/MembersCoverd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/CommonLoader.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/DownloadForms.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/MyCoverage.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/MyclaimStatus.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/NetworkHospital.dart';
import 'package:sizer/sizer.dart';

class HealthInsureSupportMainScreen extends StatefulWidget {
  const HealthInsureSupportMainScreen({super.key});

  @override
  State<HealthInsureSupportMainScreen> createState() =>
      _HealthInsureSupportMainScreenState();
}

class _HealthInsureSupportMainScreenState
    extends State<HealthInsureSupportMainScreen> {
  var HealthInauranceController = Get.put(HealthInsuranceSupportController());
  var changeTab = '';
  var policytype;
  var changetabcolor;
  @override
  void initState() {
    changetabcolor = 'home';
    print(HealthInauranceController.policyList.length);
    print(HealthInauranceController.policyList);
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
                Spacer(),
                SvgPicture.asset('assets/Images/Notification.svg'),
              ],
            ),
          )),
          preferredSize: Size(100.h, 20.h)),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: FutureBuilder(
              future: HealthInauranceController.PolicyListingFunction(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? CustomLoader()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  children: [
                                    HealthInauranceController
                                                .policyList.length ==
                                            0
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top: 8.h, bottom: 4.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/Images/No_Claims.gif'),
                                                SizedBox(
                                                  height: 1.5.h,
                                                ),
                                                CommonText(
                                                  label: 'No Policy Found',
                                                  textStyle:
                                                      labelTextStyleBlackReguler19,
                                                )
                                              ],
                                            ),
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Policy Type',
                                                    textAlign: TextAlign.center,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13.sp,
                                                        fontFamily:
                                                            'Nunito Sans'),
                                                  ),
                                                  Container(
                                                    height: 5.h,
                                                    width: 30.h,
                                                    child: ListView.builder(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          HealthInauranceController
                                                              .policyList
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              changeTab = '';
                                                              policytype =
                                                                  HealthInauranceController
                                                                              .policyList[
                                                                          index]
                                                                      [
                                                                      'policy_type'];
                                                              HealthInauranceController
                                                                      .indexvalue =
                                                                  HealthInauranceController
                                                                      .policyList
                                                                      .indexOf(HealthInauranceController
                                                                              .policyList[
                                                                          index]);
                                                            });
                                                          },
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: 5.h,
                                                            width: 8.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 1.h),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                                border: Border.all(
                                                                    width: 1.0,
                                                                    color:
                                                                        policycolor),
                                                                color: HealthInauranceController
                                                                            .indexvalue ==
                                                                        HealthInauranceController
                                                                            .policyList
                                                                            .indexOf(HealthInauranceController.policyList[
                                                                                index])
                                                                    ? policycolor
                                                                    : Colors
                                                                        .transparent),
                                                            child: CommonText(
                                                              label:
                                                                  '${HealthInauranceController.policyList[index]['policy_type']}',
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: HealthInauranceController
                                                                              .indexvalue ==
                                                                          HealthInauranceController.policyList.indexOf(HealthInauranceController.policyList[
                                                                              index])
                                                                      ? Colors
                                                                          .white
                                                                      : Colors
                                                                          .black,
                                                                  fontFamily:
                                                                      'Nunito Sans'),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              HealthCarousel(),
                                              policytype == 'GPA' ||
                                                      policytype == 'GTL'
                                                  ? ThreeModules()
                                                  : ClaimModules()
                                            ],
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          CommonBottomBar(changetabcolor: changetabcolor)
                        ],
                      );
              })),
    );
  }

  ThreeModules() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(DownloadForms(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: commonboxshadow,
                color: PWhite,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e4))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset('assets/Images/Download_form.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'Download Forms',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Access and download documents like forms, checklists etc',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(MyCoverage(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            margin: EdgeInsets.only(top: 2.5.h),
            padding: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset('assets/Images/My_Coverage.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'My Coverage',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Know the benefits, capping and exclusions of your policy in a single window',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(MyclaimStatus(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        SvgPicture.asset('assets/Images/My_Claim_status.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'My Claim Status',
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Know the live status of claims',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  ClaimModules() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(MyCoverage(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(
              top: 2.2.h,
            ),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset('assets/Images/My_Coverage.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'My Coverage',
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Know the benefits, capping and exclusions of your policy in a single window',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(NetworkHospital(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        SvgPicture.asset('assets/Images/Network_hospital.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'Network Hospital',
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Search the cashless hospitals as per your provider network within seconds',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(IntimateClaim(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset(
                        'assets/Images/Intimate_my_claim.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'Intimate My Claims',
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Know the benefits, capping and exclusions of your policy in a single window',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(DownloadForms(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset('assets/Images/Download_form.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'Download Forms',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Access and download documents like forms, checklists etc',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(MembersCoverd(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        SvgPicture.asset('assets/Images/Members_Covered.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'Members Covered',
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Know the details of members covered and download their cashless cards instantly',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(MyclaimStatus(), transition: transitoineffect);
          },
          child: Container(
            height: 22.h,
            padding: EdgeInsets.only(top: 2.2.h),
            margin: EdgeInsets.only(top: 2.2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: PWhite,
                boxShadow: commonboxshadow,
                border: Border.all(width: 0.5, color: Color(0xffe4e4e))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        SvgPicture.asset('assets/Images/My_Claim_status.svg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.2.h),
                  child: Center(
                    child: Text(
                      'My Claim Status',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff021B8D),
                        fontFamily: 'Nunito Sans',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                    child: Text(
                      'Know the live status of claims',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito Sans',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(1.4.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/img.png'))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          label: 'View Details',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff2479AB),
                              fontFamily: 'Nunito Sans'),
                        ),
                        SizedBox(
                          width: 0.5.h,
                        ),
                        SvgPicture.asset(
                          'assets/Images/arrow.svg',
                          color: mainBlue,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
