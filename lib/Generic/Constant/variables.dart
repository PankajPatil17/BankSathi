import 'dart:io';

import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

const ScrollPhysics listViewPhysics = BouncingScrollPhysics();
const ScrollPhysics noPhysics = NeverScrollableScrollPhysics();

const String BASE_URL = 'https://medibhai.com/';
String razorPay_Key = '';

const Transition transitoineffect = Transition.rightToLeftWithFade;

const String RS = '₹';
var savedcityname = 'Mumbai';

var isLoading = false.obs;

String cityName = 'def';

String callBackURL = '';
int insert_ID = 0;
String module_ID = '';

//9021434305
//122341

Future<String?> getFcmToken() async {
  String? key;
  if (Platform.isIOS) {
    key = await FirebaseMessaging.instance.getToken();
    return key;
  }
  // String? fcmKey = await FirebaseMessaging.instance.getToken();
  key = await FirebaseMessaging.instance.getToken();
  return key;
}
// List<String> cartProductName = [];

const List<String> genderList = [
  'Male',
  'Female',
  'Other',
];
const List<String> relationList = [
  'Self',
  'Spouse',
  'Child',
  'Mother',
  'Father',
  'Other',
];

HeaderText({titleLabel}) {
  return CommonTextNunito(
    label: titleLabel,
    colorT: Color(0xff333333),
    fontw8: FontWeight.w400,
    size: 13.sp,
  );
}
