// ignore_for_file: unused_local_variable

import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Screens/SignUp/CorporateEmployeeSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/DeviceInfoNotifiController.dart';
import 'package:bank_sathi/Controller/HomePageController.dart';
import 'package:bank_sathi/Controller/SignUpController.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Screens/OnBoarding/WebViewScreen.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var SignUpcontroller = Get.put(SignUpController());
  var HomeController = Get.put(HomePageController());
  var DeviceFunctcontroller = Get.put(DeviceInfoNotifiController());
  TextEditingController mobileController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Container(
          height: 100.h,
          width: 100.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 100.h,
                    child: SvgPicture.asset(
                      'assets/Images/Login_Top_Image.svg',
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 1.5.h,
                ),
                Center(
                  child: Container(
                    height: 20.h,
                    child: Lottie.asset('assets/Lottie/Login_Gif.json'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.5.h),
                  child: CommonTextNunito(
                    colorT: Color(0xff021B8D),
                    label: 'Login',
                    size: 16.sp,
                    fontw8: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.5.h),
                  child: CommonTextNunito(
                    colorT: Colors.black,
                    label: 'Mobile Number',
                    size: 11.sp,
                    fontw8: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 20),
                  child: Material(
                    elevation: 5,
                    shadowColor: Color(0xffD1F1FF),
                    borderRadius: BorderRadius.circular(40),
                    child: TextFormField(
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return 'The Mobile Number field is required';
                        } else if (v.length != 10) {
                          return 'The Mobile Number field is not in the correct format';
                        }
                        return null;
                      },
                      maxLength: 10,
                      controller: mobileController,
                      enableSuggestions: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          counterText: "",
                          hintText: 'Enter Mobile Number',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black26,
                              fontFamily: 'Nunito Sans'),
                          contentPadding: EdgeInsets.all(2.h),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffe4e4e4), width: 0.5),
                              borderRadius: BorderRadius.circular(40)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffe4e4e4), width: 0.5),
                              borderRadius: BorderRadius.circular(40)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffe4e4e4), width: 0.5),
                              borderRadius: BorderRadius.circular(40)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffe4e4e4), width: 0.5),
                              borderRadius: BorderRadius.circular(40)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Color.fromARGB(255, 174, 186, 239),
                      fillColor: MaterialStateProperty.all(
                        Color(0xff021B8D),
                      ),
                      value: checkvalue,
                      onChanged: (checkboxValue) {
                        setState(() {
                          checkvalue = checkboxValue ?? false;
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'I have read and accept the ',
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: 'Nunito Sans',
                                    color: PBlack,
                                    fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Get.to(WebviewScreen(
                                        url:
                                            'https://emedshield.com/emedlife-terms-and-conditions',
                                        labelname: 'Terms & Condition'));
                                  });
                                },
                                child: Text(
                                  'Terms & Condition ',
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      color: Color(0xff021B8D),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(
                                label: 'and ',
                                textStyle: labelTextStyleBlackReguler14,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Get.to(WebviewScreen(
                                      url:
                                          'https://emedshield.com/emedlife-privacy-policy',
                                      labelname: 'Privacy Policy',
                                    ));
                                  });
                                },
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      color: Color(0xff021B8D),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      if (checkvalue == true) {
                        LoginLoader();
                        await DeviceFunctcontroller.getId();
                        await SignUpcontroller.logInFunction(
                            mobNum: mobileController.text,
                            deviceid:
                                DeviceFunctcontroller.deviceId.toString());
                        HomeController.Usermobilenumber = mobileController.text;

                        SignUpcontroller.userstatusReg == 1
                            ? Fluttertoast.showToast(
                                msg: "Mobile Number Not Registered",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 2,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              )
                            : SizedBox.shrink();
                      } else {
                        Fluttertoast.showToast(
                            msg: "Please accept conditions",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    }
                  },
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      margin: EdgeInsets.symmetric(vertical: 3.h),
                      width: 14.h,
                      decoration: BoxDecoration(
                        color: Color(0xff4BC4F9),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xff4BC4F9)),
                      ),
                      child: Center(
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Don't have an account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Nunito Sans'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.to(CorporateEmployeeSignUp());
                    });
                  },
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      margin: EdgeInsets.symmetric(vertical: 3.h),
                      width: 20.h,
                      decoration: BoxDecoration(
                        color: Color(0xff4BC4F9),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xff4BC4F9)),
                      ),
                      child: Center(
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
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
      )),
    );
  }

  LoginLoader() {
    return showDialog(
      barrierColor: Colors.transparent,
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.all(8),
          content: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(label: 'Please Wait'),
                SizedBox(
                  width: 1.5.h,
                ),
                CircularProgressIndicator(
                  color: Color(0xff2A8ABF),
                  strokeWidth: 2.75,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
