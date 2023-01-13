// ignore_for_file: unused_field, invalid_return_type_for_catch_error

import 'package:bank_sathi/Screens/SignUp/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/SignUpController.dart';
import 'package:bank_sathi/Screens/HomePage.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var SignUpcontroller = Get.put(SignUpController());
  void initState() {
    SignUpcontroller.gettokenfunction();
    Future.delayed(Duration(seconds: 5), () {
      Get.offAll(SignUpcontroller.currentUserToken == null
          ? LoginScreen()
          // ? HomePage()
          : HomePage());
    });
    checkForUpdate();
    _updateInfo?.updateAvailability == UpdateAvailability.updateAvailable
        ? () {
            InAppUpdate.performImmediateUpdate()
                .catchError((e) => showSnack(e.toString()));
          }
        : null;
    _updateInfo?.updateAvailability == UpdateAvailability.updateAvailable
        ? () {
            InAppUpdate.startFlexibleUpdate().then((_) {
              setState(() {
                _flexibleUpdateAvailable = true;
              });
            }).catchError((e) {
              showSnack(e.toString());
            });
          }
        : null;
    super.initState();
  }

  AppUpdateInfo? _updateInfo;

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  bool _flexibleUpdateAvailable = false;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      setState(() {
        _updateInfo = info;
      });
    }).catchError((e) {
      showSnack(e.toString());
    });
  }

  void showSnack(String text) {
    if (_scaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(_scaffoldKey.currentContext!)
          .showSnackBar(SnackBar(content: Text(text)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/Images/BankSathi.svg",
              height: 15.h,
              width: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
