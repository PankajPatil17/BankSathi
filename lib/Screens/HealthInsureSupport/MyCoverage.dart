import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/CommonLoader.dart';
import 'package:bank_sathi/Generic/Common/Common_Image.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:sizer/sizer.dart';

class MyCoverage extends StatefulWidget {
  const MyCoverage({super.key});

  @override
  State<MyCoverage> createState() => _MyCoverageState();
}

class _MyCoverageState extends State<MyCoverage> {
  var HealthInsuranceController = Get.put(HealthInsuranceSupportController());
  var changeTab = '';
  var policytype;
  var changetabcolor;
  TextEditingController coveragecontroller = TextEditingController();
  @override
  void initState() {
    changetabcolor = 'home';
    super.initState();
  }

  SearchFunction() {
    final result = HealthInsuranceController.MycoverageGroup.where((movie) {
      final movietitle = movie['group']['icon'].toString().toLowerCase();
      final input = coveragecontroller.text.toLowerCase();
      return movietitle.contains(input);
    }).toList();
    setState(() {
      HealthInsuranceController.SearchResult = result;
    });
    // Future.delayed(Duration(seconds: 1), () {
    //   print(HealthInsuranceController.SearchResult);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
              child: Container(
            height: 7.h,
            width: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 1.2.h),
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
                Spacer(),
                SvgPicture.asset('assets/Images/Notification.svg'),
              ],
            ),
          )),
          preferredSize: Size(100.h, 20.h)),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: FutureBuilder(
              future: HealthInsuranceController.PolicyListingFunction(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Policy Type',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                  Container(
                                    height: 5.h,
                                    width: 30.h,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: HealthInsuranceController
                                          .policyList.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              changeTab = '';
                                              policytype =
                                                  HealthInsuranceController
                                                          .policyList[index]
                                                      ['policy_type'];
                                              HealthInsuranceController
                                                      .indexvalue =
                                                  HealthInsuranceController
                                                      .policyList
                                                      .indexOf(
                                                          HealthInsuranceController
                                                                  .policyList[
                                                              index]);
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 5.h,
                                            width: 8.h,
                                            margin: EdgeInsets.only(left: 1.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: policycolor),
                                                color: HealthInsuranceController
                                                            .indexvalue ==
                                                        HealthInsuranceController
                                                            .policyList
                                                            .indexOf(
                                                                HealthInsuranceController
                                                                        .policyList[
                                                                    index])
                                                    ? policycolor
                                                    : Colors.transparent),
                                            child: CommonText(
                                              label:
                                                  '${HealthInsuranceController.policyList[index]['policy_type']}',
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                  color: HealthInsuranceController
                                                              .indexvalue ==
                                                          HealthInsuranceController
                                                              .policyList
                                                              .indexOf(
                                                                  HealthInsuranceController
                                                                          .policyList[
                                                                      index])
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontFamily: 'Nunito Sans'),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.5.h,
                              ),
                              Text(
                                'My Coverage',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    fontFamily: 'Nunito Sans',
                                    color: Color(0xff021B8D)),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                height: 6.5.h,
                                width: 100.h,
                                margin: EdgeInsets.symmetric(vertical: 1.2.h),
                                child: TextFormField(
                                  textInputAction: TextInputAction.search,
                                  onFieldSubmitted: (v) {
                                    Get.to(SearchFunction());
                                  },
                                  onChanged: (value) {
                                    SearchFunction();
                                  },
                                  controller: coveragecontroller,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 1.h, left: 1.h),
                                      hintText: 'Search Coverage',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xffb2b2b2),
                                          fontFamily: 'Nunito Sans'),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffe4e4e4),
                                              width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffe4e4e4),
                                              width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      fillColor: Colors.white,
                                      suffixIcon: coveragecontroller.text == ''
                                          ? IconButton(
                                              padding: EdgeInsets.only(
                                                  bottom: 0.2.h),
                                              icon: Icon(
                                                Icons.search_rounded,
                                                color: Colors.grey.shade300,
                                                size: 3.h,
                                              ),
                                              onPressed: () {
                                                SearchFunction();
                                              },
                                            )
                                          : IconButton(
                                              padding: EdgeInsets.only(
                                                  bottom: 0.2.h),
                                              icon: Icon(
                                                Icons.clear_sharp,
                                                color: Colors.grey.shade300,
                                                size: 3.h,
                                              ),
                                              onPressed: () {
                                                SearchFunction();
                                                coveragecontroller.clear();
                                              },
                                            ),
                                      filled: true),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'To more about new feature click on  ',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff363636)),
                                  ),
                                  SvgPicture.asset(
                                    'assets/Images/info.svg',
                                    color: policycolor,
                                    height: 2.3.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              coveragecontroller.text == ''
                                  ? FutureBuilder(
                                      future: HealthInsuranceController
                                          .PolicyMycoverageList(),
                                      builder: (BuildContext context,
                                          AsyncSnapshot<dynamic> snapshot) {
                                        return snapshot.connectionState ==
                                                ConnectionState.waiting
                                            ? CustomLoader()
                                            : ListView.builder(
                                                shrinkWrap: true,
                                                controller: ScrollController(),
                                                itemCount:
                                                    HealthInsuranceController
                                                        .MycoverageGroup.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return coverageCard(
                                                      alldata:
                                                          HealthInsuranceController
                                                                  .MycoverageGroup[
                                                              index]);
                                                },
                                              );
                                      })
                                  : HealthInsuranceController
                                              .SearchResult.length ==
                                          0
                                      ? CommonImage(
                                          url:
                                              'https://media.tenor.com/unvXyxtdn3oAAAAC/no-result.gif')
                                      : ListView.builder(
                                          shrinkWrap: true,
                                          controller: ScrollController(),
                                          itemCount: HealthInsuranceController
                                              .SearchResult.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return coverageCard(
                                                alldata:
                                                    HealthInsuranceController
                                                        .SearchResult[index]);
                                          },
                                        )
                            ],
                          ),
                        ),
                      ),
                    ),
                    CommonBottomBar(changetabcolor: changetabcolor)
                  ],
                );
              })),
    );
  }

  coverageCard({alldata}) {
    return Container(
      width: 100.h,
      margin: EdgeInsets.only(bottom: 0.9.h, top: 0.5.h),
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
          boxShadow: commonboxshadow,
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffEAF9FF)),
      child: Column(
        children: [
          Image.network(
            'https://medibhai.com/assets/responsive/gmc_rfq_icon/${alldata['group']['icon']}',
            height: 6.h,
            width: 6.h,
          ),
          SizedBox(
            height: 1.2.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: alldata['group']['params'].length,
            controller: ScrollController(),
            itemBuilder: (BuildContext context, int childindex) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.4.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  alldata['group']['params'][childindex]
                                      ['label'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                      color: policycolor,
                                      fontFamily: 'Nunito Sans'),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                content: Text(
                                    alldata['group']['params'][childindex]
                                        ['description'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                        color: Colors.black,
                                        fontFamily: 'Nunito Sans')),
                              );
                            },
                          );
                        },
                        child: alldata['group']['params'][childindex]
                                    ['description'] ==
                                ''
                            ? Container()
                            : SvgPicture.asset(
                                'assets/Images/info.svg',
                                color: Color(0xff021B8D),
                                height: 2.3.h,
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 45.w,
                            child: Text(
                              alldata['group']['params'][childindex]['label'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.sp,
                                  fontFamily: 'Nunito Sans',
                                  color: Color(0xff021B8D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35.w,
                          child: Text(
                            alldata['group']['params'][childindex]['value']
                                .toString(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp,
                                fontFamily: 'Nunito Sans',
                                color: Color(0xff021B8D)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    alldata['group']['params'].indexOf(
                                alldata['group']['params'][childindex]) ==
                            (alldata['group']['params'].length - 1)
                        ? Container()
                        : Divider(
                            thickness: 0.5,
                            color: Color(0xff4BC4F9),
                          ),
                    alldata['group']['params'].indexOf(
                                alldata['group']['params'][childindex]) !=
                            (alldata['group']['params'].length - 1)
                        ? Container()
                        : SizedBox(
                            height: 1.5.h,
                          )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
