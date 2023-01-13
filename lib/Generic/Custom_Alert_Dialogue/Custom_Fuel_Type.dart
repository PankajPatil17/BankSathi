// ignore_for_file: unused_local_variable

import 'package:bank_sathi/Controller/CarInsurance_Controller.dart';
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Car_Insurance/Car_Vehicle_Variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomFuelType extends StatefulWidget {
  @override
  State<CustomFuelType> createState() => _CustomFuelTypeState();
}

class _CustomFuelTypeState extends State<CustomFuelType> {
  var carinsurancecontroller = Get.put(CarInsuranceController());
  var type = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      title: Center(
        child: Text(
          "Fuel Type",
          style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
      content: Container(
        width: 100.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Color(0xff4BC4F9),
              height: 0,
            ),
            SizedBox(
              height: 1.h,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  type = 'petrol';
                  Get.to(CarVehicleVariant(), transition: transitoineffect);
                });
              },
              child: Center(
                child: Container(
                  width: 15.h,
                  padding: EdgeInsets.all(1.5.h),
                  margin: EdgeInsets.only(bottom: 1.5.h),
                  decoration: BoxDecoration(
                      boxShadow: commonboxshadowBlue,
                      color: PWhite,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      type == 'petrol'
                          ? SvgPicture.asset('assets/Images/Radio_Coloured.svg')
                          : SvgPicture.asset(
                              'assets/Images/Radio_UnColoured.svg'),
                      SizedBox(
                        width: 1.h,
                      ),
                      CommonTextNunito(
                        label: 'Petrol',
                        fontw8: FontWeight.w500,
                        size: 11.sp,
                        colorT: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  type = 'Diesel';
                  Get.to(CarVehicleVariant(), transition: transitoineffect);
                });
              },
              child: Center(
                child: Container(
                  width: 15.h,
                  padding: EdgeInsets.all(1.5.h),
                  margin: EdgeInsets.only(bottom: 1.5.h),
                  decoration: BoxDecoration(
                      boxShadow: commonboxshadowBlue,
                      color: PWhite,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      type == 'Diesel'
                          ? SvgPicture.asset('assets/Images/Radio_Coloured.svg')
                          : SvgPicture.asset(
                              'assets/Images/Radio_UnColoured.svg'),
                      SizedBox(
                        width: 1.h,
                      ),
                      CommonTextNunito(
                        label: 'Diesel',
                        fontw8: FontWeight.w500,
                        size: 11.sp,
                        colorT: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  type = 'cng';
                  Get.to(CarVehicleVariant(), transition: transitoineffect);
                });
              },
              child: Center(
                child: Container(
                  width: 20.h,
                  margin: EdgeInsets.only(bottom: 1.5.h),
                  padding: EdgeInsets.all(1.5.h),
                  decoration: BoxDecoration(
                      boxShadow: commonboxshadowBlue,
                      color: PWhite,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      type == 'cng'
                          ? SvgPicture.asset('assets/Images/Radio_Coloured.svg')
                          : SvgPicture.asset(
                              'assets/Images/Radio_UnColoured.svg'),
                      SizedBox(
                        width: 1.h,
                      ),
                      CommonTextNunito(
                        label: 'Petrol+CNG',
                        fontw8: FontWeight.w500,
                        size: 11.sp,
                        colorT: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  type = 'battery';
                  Get.to(CarVehicleVariant(), transition: transitoineffect);
                });
              },
              child: Center(
                child: Container(
                  width: 20.h,
                  padding: EdgeInsets.all(1.5.h),
                  decoration: BoxDecoration(
                      boxShadow: commonboxshadowBlue,
                      color: PWhite,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      type == 'battery'
                          ? SvgPicture.asset('assets/Images/Radio_Coloured.svg')
                          : SvgPicture.asset(
                              'assets/Images/Radio_UnColoured.svg'),
                      SizedBox(
                        width: 1.h,
                      ),
                      CommonTextNunito(
                        label: 'Battery Operated',
                        fontw8: FontWeight.w500,
                        size: 11.sp,
                        colorT: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
