import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WellnessComingSoon extends StatefulWidget {
  const WellnessComingSoon({super.key});

  @override
  State<WellnessComingSoon> createState() => _WellnessComingSoonState();
}

class _WellnessComingSoonState extends State<WellnessComingSoon> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coming Soon",
                style: labelTextStyleBlackReguler19,
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    color: Colors.black,
                  ))
            ],
          ),
          Container(
            child: Lottie.asset('assets/Lottie/Coming_Soon.json'),
          ),
        ],
      ),
    );
  }
}
