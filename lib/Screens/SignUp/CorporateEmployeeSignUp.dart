import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Screens/SignUp/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/SignUpController.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class CorporateEmployeeSignUp extends StatefulWidget {
  const CorporateEmployeeSignUp({super.key});

  @override
  State<CorporateEmployeeSignUp> createState() =>
      _CorporateEmployeeSignUpState();
}

class _CorporateEmployeeSignUpState extends State<CorporateEmployeeSignUp> {
  var SignUpcontroller = Get.put(SignUpController());
  TextEditingController empIdController = TextEditingController();
  TextEditingController CorpCodeController = TextEditingController();

  final formKey = GlobalKey<FormState>();
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
                  label: 'Corporate Employee Registration',
                  size: 16.sp,
                  fontw8: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: CommonTextNunito(
                  colorT: Colors.black,
                  label: ' Employee ID',
                  size: 12.sp,
                  fontw8: FontWeight.w500,
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
                        return 'The Employee ID is required';
                      }
                      return null;
                    },
                    controller: empIdController,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: 'Enter Employee ID',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black26,
                        ),
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
                padding: EdgeInsets.only(left: 16, bottom: 2.h),
                child: CommonTextNunito(
                  colorT: Colors.black,
                  label: ' Corporate Code',
                  size: 12.sp,
                  fontw8: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 4.h),
                child: Material(
                  elevation: 5,
                  shadowColor: Color(0xffD1F1FF),
                  borderRadius: BorderRadius.circular(40),
                  child: TextFormField(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return 'The Corporate Code is required';
                      }
                      return null;
                    },
                    controller: CorpCodeController,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: 'Enter Corporate Code',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black26,
                        ),
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      SignUpcontroller.CorporateEmpReg(
                          empId: empIdController.text,
                          corporatecode: CorpCodeController.text);
                    }
                  });
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    margin: EdgeInsets.symmetric(vertical: 2.h),
                    width: 14.h,
                    decoration: BoxDecoration(
                      color: Color(0xff4BC4F9),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff4BC4F9)),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
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
              SizedBox(
                height: 1.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(LoginScreen());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonTextNunito(
                      colorT: Color(0xff363636),
                      label: 'Already have account? ',
                      fontw8: FontWeight.w400,
                      size: 12.sp,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Nunito Sans',
                          color: Color(0xff021B8D),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      )),
    );
  }
}
