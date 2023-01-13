import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/DeviceInfoNotifiController.dart';
import 'package:bank_sathi/Controller/SignUpController.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:slide_countdown/slide_countdown.dart';

class OtpVerify extends StatefulWidget {
  final mobNum;
  final deviceid;

  const OtpVerify({super.key, this.mobNum, this.deviceid});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  var SignUpcontroller = Get.put(SignUpController());
  var DeviceFunctcontroller = Get.put(DeviceInfoNotifiController());
  TextEditingController OtpController = TextEditingController();
  var changetimer = '';

  @override
  void initState() {
    Future.delayed(Duration(seconds: 59), () {
      setState(() {
        changetimer = 'resend';
      });
    });
    // otplisten();
    super.initState();
  }

  // otplisten() async {
  //   await SmsAutoFill().listenForCode;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        height: 100.h,
        width: 100.h,
        child: SingleChildScrollView(
          child: Column(children: [
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
              padding: EdgeInsets.only(left: 3.5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextNunito(
                    colorT: Color(0xff021B8D),
                    label: 'OTP Verification',
                    size: 16.sp,
                    fontw8: FontWeight.w500,
                  ),
                ],
              ),
            ),

            // TextFieldPinAutoFill(
            //   currentCode: '000000',
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.5.h, vertical: 2.h),
              child: Material(
                elevation: 5,
                shadowColor: Color(0xffD1F1FF),
                borderRadius: BorderRadius.circular(40),
                child: TextFormField(
                  maxLength: 6,
                  controller: OtpController,
                  autofillHints: [AutofillHints.oneTimeCode],
                  enableSuggestions: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Enter OTP',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.black26,
                          fontFamily: 'Nunito Sans'),
                      contentPadding: EdgeInsets.all(2.h),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.5),
                          borderRadius: BorderRadius.circular(40)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.5),
                          borderRadius: BorderRadius.circular(40)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.5),
                          borderRadius: BorderRadius.circular(40)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.5),
                          borderRadius: BorderRadius.circular(40)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(
                  label: "Didn't receive OTP click on ",
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      fontFamily: 'Nunito Sans'),
                ),
                changetimer == 'resend'
                    ? GestureDetector(
                        onTap: () {
                          DeviceFunctcontroller.getId();
                          Future.delayed(Duration(milliseconds: 100), () {
                            SignUpcontroller.logInFunction(
                                mobNum: widget.mobNum,
                                deviceid: DeviceFunctcontroller.deviceId);
                          });
                        },
                        child: CommonText(
                          label: 'Resend OTP ',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: Color(0xff021B8D),
                              fontFamily: 'Nunito Sans'),
                        ),
                      )
                    : Row(
                        children: [
                          CommonText(
                            label: 'Request in ',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Color(0xff4BC4F9),
                                fontFamily: 'Nunito Sans'),
                          ),
                          SlideCountdown(
                            padding: EdgeInsets.all(0),
                            textStyle: TextStyle(color: Colors.black),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            duration: const Duration(seconds: 60),
                          ),
                          CommonText(
                            label: ' Sec',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontFamily: 'Nunito Sans'),
                          ),
                        ],
                      )
              ],
            ),
            GestureDetector(
              onTap: () async {
                // String? fcmKey = await getFcmToken();
                // print('FCM Key : $fcmKey');
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        "Please Wait",
                        style: labelTextStyleBlackReguler16,
                      ),
                    );
                  },
                );
                SignUpcontroller.OtpVerifyFunction(
                  mobNum: widget.mobNum,
                  deviceid: widget.deviceid,
                  otp: OtpController.text,
                  fcmkey: '1',
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                margin: EdgeInsets.symmetric(vertical: 3.h),
                width: 14.h,
                decoration: BoxDecoration(
                  color: Color(0xff4BC4F9),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff4BC4F9)),
                ),
                child: Center(
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        color: Colors.white,
                        fontFamily: 'Nunito Sans'),
                  ),
                ),
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
