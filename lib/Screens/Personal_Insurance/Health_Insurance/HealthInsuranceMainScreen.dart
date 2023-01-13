// ignore_for_file: deprecated_member_use
import 'package:bank_sathi/Controller/PersonalHealthInsurerController.dart';
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/CommonCheckBoxCard.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/CommonSonDaughterincDecCard.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/CommonStepperBar.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Health_Insurance/SelectYourAge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class HealthInsuranceMainScreen extends StatefulWidget {
  const HealthInsuranceMainScreen({super.key});

  @override
  State<HealthInsuranceMainScreen> createState() =>
      _HealthInsuranceMainScreenState();
}

class _HealthInsuranceMainScreenState extends State<HealthInsuranceMainScreen> {
  var changetabcolor;
  var HealthInsurerController = Get.put(PersonalHealthInsurerController());

  @override
  void initState() {
    changetabcolor = 'home';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: SafeArea(
                child: Container(
              height: 7.h,
              width: 100.h,
              padding: EdgeInsets.only(right: 1.2.h),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, 4))
              ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                  SvgPicture.asset('assets/Images/BankSathi.svg'),
                ],
              ),
            )),
            preferredSize: Size(100.h, 20.h)),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderText(
                          titleLabel:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.5.h),
                        child: CommonStepperBar(
                          pageNum: 1,
                        ),
                      ),
                      HeaderText(
                          titleLabel: 'Tell us who would you like to insure'),
                      CommonCheckBoxCard(
                          checktitle1: 'Self', checktitle2: 'Spouse'),
                      CommonSonDaughterincDecCard(checktitle: 'Son'),
                      CommonSonDaughterincDecCard(checktitle: 'Daughter'),
                      CommonCheckBoxCard(
                          checktitle1: 'Father', checktitle2: 'Mother'),
                      CommonCheckBoxCard(
                          checktitle1: 'Grand Father',
                          checktitle2: 'Grand Mother'),
                      CommonCheckBoxCard(
                          checktitle1: 'Father-in-law',
                          checktitle2: 'Mother-in-law'),
                      GestureDetector(
                        onTap: () {
                          if (HealthInsurerController.SelectedMembers.length >=
                                  1 ||
                              HealthInsurerController.son >= 1 ||
                              HealthInsurerController.Daughter >= 1) {
                            Get.to(SelectYourAge());
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Please Select Atleast one Checkbox"),
                            ));
                          }
                          print(HealthInsurerController.SelectedMembers);
                        },
                        child: Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 3.h, bottom: 2.5.h),
                              height: 6.h,
                              width: 15.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(255, 225, 211, 245),
                                    Color.fromARGB(255, 176, 229, 177)
                                  ])),
                              child: CommonTextNunito(
                                label: 'Next',
                                colorT: Colors.white,
                                fontw8: FontWeight.w500,
                                size: 12.sp,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CommonBottomBar(changetabcolor: changetabcolor)
          ],
        )));
  }

//header Text
  HeaderText({titleLabel}) {
    return CommonTextNunito(
      label: titleLabel,
      colorT: Color(0xff6B6B6B),
      fontw8: FontWeight.w400,
      size: 13.sp,
    );
  }
}
