// ignore_for_file: deprecated_member_use

import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Image.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:sizer/sizer.dart';

class CarSelectPlans extends StatefulWidget {
  CarSelectPlans({super.key});

  @override
  State<CarSelectPlans> createState() => _CarSelectPlansState();
}

TextEditingController search = TextEditingController();

class _CarSelectPlansState extends State<CarSelectPlans> {
  List isnuname = [
    "HDFC ERGO",
    "Care",
    "Digit",
    "Future",
    "Tata AIG",
    "Aditya Birla",
    "Reliance General",
  ];

  List insuimg = [
    "https://insuretech.enirmaan.com/images/HDFCERGO.png",
    "https://insuretech.enirmaan.com/images/care.png",
    "https://insuretech.enirmaan.com/images/godigit.png",
    "https://insuretech.enirmaan.com/images/future.png",
    "https://insuretech.enirmaan.com/images/tataaig.png",
    "https://insuretech.enirmaan.com/images/aditya.png",
    "https://insuretech.enirmaan.com/images/RELIANCE-HEALTH.jpg"
  ];

  List insuDesc = [
    "HDFC ERGO Health Suraksha Individual - Silver New",
    "Care Freedom",
    "Health Care Plus - Silver",
    "Health Total (Vital)",
    "Medicare",
    "Activ Health V2",
    "Plus"
  ];

  List isnuamt = [
    "9,590.00",
    "3,870.00",
    "5,617.00",
    "7,927.00",
    "7,141.00",
    "7,174.00",
    "5,100.00"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: PWhite,
        elevation: 1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: BackButton(
          color: Colors.black,
        ),
        title: CommonText(
          label: 'Select Plan',
          textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'Nunito Sans'),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.h,
              padding: EdgeInsets.all(1.2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                        child: ListView.builder(
                      itemCount: insuDesc.length,
                      controller: ScrollController(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              // Get.to(CarProvideDetails(),
                              //     transition: transitoineffect);
                            },
                            child: Container(
                              padding: EdgeInsets.all(1.5.h),
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(
                                boxShadow: commonboxshadow,
                                color: PWhite,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 2.h),
                                        height: 15.h,
                                        width: 15.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Color(0xffe4e4e4))),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          child:
                                              CommonImage(url: insuimg[index]),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${isnuname[index]}',
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11.sp),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.0),
                                              child: Text(
                                                '${insuDesc[index]}',
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11.sp),
                                                maxLines: 2,
                                              ),
                                            ),
                                            Container(
                                              height: 5.5.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.h),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomLeft,
                                                  end: Alignment.topRight,
                                                  colors: [
                                                    Color(0xff1ba8d3),
                                                    Color(0xff39f1e0),
                                                  ],
                                                ),
                                              ),
                                              child: Center(
                                                child: CommonText(
                                                  label: '${isnuamt[index]}',
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Nunito Sans'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      },
                    )),
                  ),
                ],
              ),
            ),
          ),
          CommonBottomBar(
            changetabcolor: '',
          )
        ],
      )),
    );
  }
}
