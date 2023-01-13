import 'package:carousel_slider/carousel_slider.dart';
import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HealthCarousel extends StatefulWidget {
  const HealthCarousel({super.key});

  @override
  State<HealthCarousel> createState() => _HealthCarouselState();
}

class _HealthCarouselState extends State<HealthCarousel> {
  var HealthInauranceController = Get.put(HealthInsuranceSupportController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.2.h, left: 1.h, right: 1.h, top: 2.2.h),
      height: 16.h,
      width: 100.h,
      // decoration: BoxDecoration(boxShadow: [
      //   BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      // ]),
      child: CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.6.h),
            padding: EdgeInsets.only(
                top: 2.5.h, bottom: 2.5.h, right: 1.2.h, left: 1.2.h),
            width: 100.h,
            decoration: BoxDecoration(
              color: Color(0xffB0F7DE),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                              label: 'Insurance company name :',
                              maxLines: 4,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans')),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                            label: HealthInauranceController.policyList[
                                    HealthInauranceController.indexvalue]
                                ['product_name'],
                            maxLines: 4,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                                fontFamily: 'Nunito Sans'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/Images/Insurance_company_name.svg',
                    height: 10.h,
                    width: 10.h,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.6.h),
            padding: EdgeInsets.only(
                top: 2.5.h, bottom: 2.5.h, right: 1.2.h, left: 1.2.h),
            width: 100.h,
            decoration: BoxDecoration(
              color: Color(0xffFFF7D3),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                              label: 'Policy Holder name :',
                              maxLines: 4,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans')),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                            label: HealthInauranceController.policyList[
                                    HealthInauranceController.indexvalue]
                                ['insurer_name'],
                            maxLines: 4,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                                fontFamily: 'Nunito Sans'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/Images/Policy_holder_name.svg',
                    height: 10.h,
                    width: 10.h,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.6.h),
            padding: EdgeInsets.only(
                top: 2.5.h, bottom: 2.5.h, right: 1.2.h, left: 1.2.h),
            width: 100.h,
            decoration: BoxDecoration(
              color: Color(0xffFFECF1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                              label:
                                  'Policy Number :  ${HealthInauranceController.policyList[HealthInauranceController.indexvalue]['policy_no']}',
                              maxLines: 4,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans')),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                            label:
                                'Policy Type : ${HealthInauranceController.policyList[HealthInauranceController.indexvalue]['policy_type']}',
                            maxLines: 4,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                                fontFamily: 'Nunito Sans'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/Images/Policy_number.svg',
                    height: 10.h,
                    width: 10.h,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.6.h),
            padding: EdgeInsets.only(
                top: 2.5.h, bottom: 2.5.h, right: 1.2.h, left: 1.2.h),
            width: 100.h,
            decoration: BoxDecoration(
              color: Color(0xffE8F2FF),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                              label:
                                  'TPA Name : ${HealthInauranceController.policyList[HealthInauranceController.indexvalue]['tpa_name']}',
                              maxLines: 4,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans')),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                            label:
                                'Policy Expiry date : ${HealthInauranceController.policyList[HealthInauranceController.indexvalue]['end_date']}',
                            maxLines: 4,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                                fontFamily: 'Nunito Sans'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/Images/Policy_Expiry_Date.svg',
                    height: 10.h,
                    width: 10.h,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.6.h),
            padding: EdgeInsets.only(
                top: 2.5.h, bottom: 2.5.h, right: 1.2.h, left: 1.2.h),
            width: 100.h,
            decoration: BoxDecoration(
              color: Color(0xffFFE3EF),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                              label: 'Sum Insured :',
                              maxLines: 4,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans')),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50.w,
                          child: CommonText(
                            label: HealthInauranceController.policyList[
                                    HealthInauranceController.indexvalue]
                                ['sum_insured'],
                            maxLines: 4,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                                fontFamily: 'Nunito Sans'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/Images/Sum_Insured.svg',
                    height: 13.h,
                  )
                ],
              ),
            ),
          )
        ],
        options: CarouselOptions(
          autoPlay: true,
          pauseAutoPlayOnManualNavigate: true,
          pauseAutoPlayOnTouch: true,
          viewportFraction: 1,
          aspectRatio: 16 / 9,
          initialPage: 0,
          autoPlayInterval: Duration(seconds: 3),
        ),
      ),
    );
  }
}
