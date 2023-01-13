import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/HomePageController.dart';
import 'package:bank_sathi/Generic/Common/Common_Image.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:sizer/sizer.dart';

class ActicePackagesDetails extends StatefulWidget {
  final packageName;
  final id;

  const ActicePackagesDetails({super.key, this.packageName, this.id});
  @override
  State<ActicePackagesDetails> createState() => _ActicePackagesDetailsState();
}

class _ActicePackagesDetailsState extends State<ActicePackagesDetails> {
  var changetabcolor;
  var HomeController = Get.put(HomePageController());
  @override
  void initState() {
    changetabcolor = 'home';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                BackButton(
                  color: Color(0xff2479ab),
                ),
                SvgPicture.asset('assets/Images/Emedlife.svg'),
              ],
            ),
          )),
          preferredSize: Size(100.h, 20.h)),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.h,
              padding: EdgeInsets.all(1.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 6.h,
                      margin: EdgeInsets.only(top: 1.h, bottom: 2.h),
                      width: 100.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0XFF1ba8d3), Color(0xFF39f1e0)]),
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 6,
                                color: Colors.black12,
                                spreadRadius: 1)
                          ]),
                      child: CommonText(
                        label: '${widget.packageName}',
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Nunito Sans'),
                      ),
                    ),
                    FutureBuilder(
                      future: HomeController.ActivepackagesDetails(
                          id: 9.toString()),
                      builder: (BuildContext context,
                          AsyncSnapshot<dynamic> snapshot) {
                        return ListView.builder(
                          itemCount: HomeController.packagesListDetails.length,
                          shrinkWrap: true,
                          controller: ScrollController(),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              child: Container(
                                width: 100.h,
                                padding: EdgeInsets.all(1.2.h),
                                margin: EdgeInsets.only(bottom: 1.5.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        width: 1.0, color: Color(0xffe4e4e4))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            height: 5.h,
                                            width: 5.h,
                                            margin: EdgeInsets.only(right: 1.h),
                                            child: CommonImage(
                                                url:
                                                    "${HomeController.packagesListDetails[index]['icon'] == null ? "https://medibhai.com/assets/responsive/images/cashless-hospital.png" : "${HomeController.packagesListDetails[index]['icon']}"}")),
                                        CommonText(
                                          label:
                                              '${HomeController.packagesListDetails[index]['title']}',
                                          maxLines: 1,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Nunito Sans',
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.7.h,
                                    ),
                                    Text(
                                      '${HomeController.packagesListDetails[index]['description']}',
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          CommonBottomBar(changetabcolor: changetabcolor)
        ],
      )),
    );
  }
}
