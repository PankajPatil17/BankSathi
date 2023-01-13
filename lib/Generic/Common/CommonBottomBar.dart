import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Screens/HealthInsureSupport/ContactUs.dart';
// import 'package:bank_sathi/Screens/MyPolicies.dart';
import 'package:bank_sathi/Screens/My_Profile/MyProfile.dart';
import 'package:bank_sathi/Screens/WellnessCorner/Wellness_ComingSoon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Screens/HomePage.dart';
import 'package:sizer/sizer.dart';

class CommonBottomBar extends StatefulWidget {
  final changetabcolor;

  CommonBottomBar({super.key, required this.changetabcolor});

  @override
  State<CommonBottomBar> createState() => _CommonBottomBarState();
}

class _CommonBottomBarState extends State<CommonBottomBar> {
  final HealthController = Get.put(HealthInsuranceSupportController());

  @override
  void initState() {
    HealthController.PolicyListingFunction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.8.h,
      width: 100.h,
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(top: BorderSide(color: Color(0xffe4e4e4), width: 1.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Get.offAll(() => HomePage(), transition: Transition.noTransition);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/Images/Home.svg',
                  height: 2.9.h,
                  width: 2.9.h,
                  color: widget.changetabcolor == 'Home'
                      ? Color.fromARGB(255, 109, 99, 243)
                      : Colors.grey.shade400,
                ),
                Text(
                  'Home',
                  style: widget.changetabcolor == 'Home'
                      ? labelTextStyleDarkBlueReguler14
                      : labelTextStyleBlackReguler14,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Get.to(
              //   () => MyPolicies(),
              //   transition: Transition.noTransition,
              // );
              setState(() {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return WellnessComingSoon();
                  },
                );
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/Images/My Policies.svg',
                  height: 2.9.h,
                  width: 2.9.h,
                  color: widget.changetabcolor == 'Policies'
                      ? Color.fromARGB(255, 109, 99, 243)
                      : Colors.grey.shade400,
                ),
                Text(
                  'My Policies',
                  style: widget.changetabcolor == ' Policies'
                      ? labelTextStyleDarkBlueReguler14
                      : labelTextStyleBlackReguler14,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              HealthController.PolicyListingFunction();
              Get.to(ContactUs(), transition: Transition.noTransition);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/Images/Teleconsult.svg',
                  height: 2.9.h,
                  width: 2.9.h,
                  color: widget.changetabcolor == 'Support'
                      ? Color.fromARGB(255, 109, 99, 243)
                      : Colors.grey.shade400,
                ),
                Text(
                  'Support',
                  style: widget.changetabcolor == 'Support'
                      ? labelTextStyleDarkBlueReguler14
                      : labelTextStyleBlackReguler14,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => MyProfile(), transition: Transition.noTransition);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/Images/Profile.svg',
                  height: 2.9.h,
                  width: 2.9.h,
                  color: widget.changetabcolor == 'Profile'
                      ? Color.fromARGB(255, 109, 99, 243)
                      : Colors.grey.shade400,
                ),
                Text(
                  'Profile',
                  style: widget.changetabcolor == 'Profile'
                      ? labelTextStyleDarkBlueReguler14
                      : labelTextStyleBlackReguler14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
