import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/DeviceInfoNotifiController.dart';
import 'package:bank_sathi/Controller/SignUpController.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Screens/OnBoarding/WebViewScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CorporateCreateAccount extends StatefulWidget {
  @override
  State<CorporateCreateAccount> createState() => _CorporateCreateAccountState();
}

class _CorporateCreateAccountState extends State<CorporateCreateAccount> {
  var DeviceFunctcontroller = Get.put(DeviceInfoNotifiController());
  var SignUpcontroller = Get.put(SignUpController());
  TextEditingController officialEmail = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController corpF1ReadOnly = TextEditingController();
  TextEditingController corpF2ReadOnly = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool checkvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        height: 100.h,
        width: 100.h,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: 100.h,
                  child: SvgPicture.asset(
                    'assets/Images/Login_Top_Image.svg',
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 3.5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 1.8.h),
                child: CommonTextNunito(
                  colorT: Colors.black,
                  label: ' Corporate Name',
                  size: 12.sp,
                  fontw8: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Material(
                  elevation: 5,
                  shadowColor: Color(0xffD1F1FF),
                  borderRadius: BorderRadius.circular(40),
                  child: TextFormField(
                    controller: corpF1ReadOnly,
                    readOnly: true,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: SignUpcontroller.CorCropoName.toString(),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black,
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
                        fillColor: Color(0xffECF9FF),
                        filled: true),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 1.5.h, top: 1.5.h),
                child: CommonTextNunito(
                  colorT: Colors.black,
                  label: ' Full Name',
                  size: 12.sp,
                  fontw8: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Material(
                  elevation: 5,
                  shadowColor: Color(0xffD1F1FF),
                  borderRadius: BorderRadius.circular(40),
                  child: TextFormField(
                    controller: corpF2ReadOnly,
                    readOnly: true,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: SignUpcontroller.CorFullName,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black,
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
                        fillColor: Color(0xffECF9FF),
                        filled: true),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 1.5.h),
                child: CommonTextNunito(
                  colorT: Colors.black,
                  label: ' Official Email',
                  size: 12.sp,
                  fontw8: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2.h),
                child: Material(
                  elevation: 5,
                  shadowColor: Color(0xffD1F1FF),
                  borderRadius: BorderRadius.circular(40),
                  child: TextFormField(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return 'The Email is required';
                      }
                      return null;
                    },
                    controller: officialEmail,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: 'Enter Official Email',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black26,
                            fontFamily: 'Poppins'),
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
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 1.5.h),
                child: CommonTextNunito(
                  colorT: Colors.black,
                  label: ' Employee Mobile No.',
                  size: 12.sp,
                  fontw8: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 2.h),
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
                    controller: mobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black26,
                            fontFamily: 'Poppins'),
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
                onTap: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      if (checkvalue == true) {
                        DeviceFunctcontroller.getId();
                        Future.delayed(Duration(milliseconds: 100), () {
                          SignUpcontroller.CorporateSendOtp(
                              mobile: mobile.text,
                              deviceid: DeviceFunctcontroller.deviceId);
                        });
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
            ]),
          ),
        ),
      )),
    );
  }
}
