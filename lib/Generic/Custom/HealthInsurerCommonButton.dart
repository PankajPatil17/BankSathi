import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HealthInsurerCommonButton extends StatelessWidget {
  final btnName;
  final IcnName;

  const HealthInsurerCommonButton(
      {super.key, required this.btnName, required this.IcnName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 16.h,
      margin: EdgeInsets.only(bottom: 2.h, top: 2.h),
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
          color: Color(0xff4BC4F9),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(blurRadius: 6, color: Colors.black12, spreadRadius: 1),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '${btnName}',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: Colors.white,
                fontFamily: 'Nunito Sans'),
          ),
          Icon(
            IcnName,
            color: Colors.white,
            size: 3.h,
          )
        ],
      ),
    );
  }
}
