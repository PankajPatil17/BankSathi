// ignore_for_file: unnecessary_null_comparison

import 'package:bank_sathi/Controller/DeviceInfoNotifiController.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Screens/Notification_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  var DeviceFunctcontroller = Get.put(DeviceInfoNotifiController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.h,
      padding: EdgeInsets.all(1.2.h),
      decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: SvgPicture.asset('assets/Images/Menu.svg'),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          SizedBox(
            width: 2.h,
          ),
          SvgPicture.asset('assets/Images/BankSathi.svg'),
          Spacer(),
          // GestureDetector(
          //     onTap: () {
          //       Get.to(NotificationScreen());
          //     },
          //     child: SvgPicture.asset('assets/Images/Notification.svg')),
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Get.to(NotificationScreen(),
                        duration: Duration(milliseconds: 700),
                        transition: Transition.circularReveal);
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: DeviceFunctcontroller.Notification.length == 0 ||
                            DeviceFunctcontroller.Notification == null
                        ? Colors.grey
                        : Color(0xff1ba8d3),
                  )),
              FutureBuilder(
                future: DeviceFunctcontroller.NotificationListFunction(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return DeviceFunctcontroller.Notification.length == 0 ||
                          DeviceFunctcontroller.Notification == null
                      ? const SizedBox.shrink()
                      : Positioned(
                          right: 1.4.h,
                          child: CommonText(
                            label:
                                DeviceFunctcontroller.Notification.toString(),
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
