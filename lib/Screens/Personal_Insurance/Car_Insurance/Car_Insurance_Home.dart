// ignore_for_file: deprecated_member_use

import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Generic/Custom/Custom_AppBar.dart';
import 'package:bank_sathi/Generic/Custom/Custom_Drawer.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Car_Insurance/Car_Select_City.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CarInsuranceHomePage extends StatefulWidget {
  @override
  State<CarInsuranceHomePage> createState() => _CarInsuranceHomePageState();
}

class _CarInsuranceHomePageState extends State<CarInsuranceHomePage> {
  TextEditingController carnumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PWhite,
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
              padding: EdgeInsets.all(1.2.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          label: 'Car Insurance',
                          maxLines: 1,
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Lottie.asset('assets/Lottie/Car_Insurance.json'),
                        Row(
                          children: [
                            Text(
                              'Your Car Number',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 1.2.h,
                            ),
                            Text(
                              '(Eg : EP04ED2197)',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffA1A1A1)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.5.h, bottom: 1.5.h),
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(9),
                            shadowColor: Color.fromARGB(255, 229, 221, 241),
                            child: TextFormField(
                              controller: carnumber,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please Enter Your Car Number';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                  ),
                                  fillColor: PWhite,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey.shade50,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey.shade100,
                                    ),
                                  ),
                                  hintText: 'Enter Your Car Number',
                                  hintStyle: labelTextStyleGreyReguler16),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(CarSelectCity(),
                                duration: Duration(milliseconds: 350),
                                transition: transitoineffect);
                          },
                          child: Center(
                            child: Container(
                              height: 5.5.h,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 2.h, bottom: 3.5.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xff49D49D),
                              ),
                              child: Center(
                                child: CommonText(
                                  label: 'Submit',
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontFamily: 'Nunito Sans'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(CarSelectCity(),
                                  duration: Duration(milliseconds: 350),
                                  transition: transitoineffect);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    'assets/Images/Dont_Remember_Car.svg'),
                                SizedBox(
                                  width: 1.5.h,
                                ),
                                Text(
                                  "Don't remember car number?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff021B8D)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
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
}
