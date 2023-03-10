import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:sizer/sizer.dart';

import '../../Controller/SignUpController.dart';

class NetworkHospital extends StatefulWidget {
  const NetworkHospital({super.key});

  @override
  State<NetworkHospital> createState() => _NetworkHospitalState();
}

class _NetworkHospitalState extends State<NetworkHospital> {
  var SignUpcontroller = Get.put(SignUpController());
  var HealthInauranceController = Get.put(HealthInsuranceSupportController());
  var changeTab = '';
  var policytype;
  var changetabcolor;
  String? state;
  var stateName;
  String? city;
  var cityName;
  TextEditingController hospitalname = TextEditingController();
  @override
  void initState() {
    changetabcolor = 'home';
    super.initState();
  }

  List HospitalList = [].obs;
  Future SearchHospitalList() async {
    final response = await http.post(
        Uri.parse('${BASE_URL}claim_adminpanel/api/api_details/tpahospital'),
        body: {
          "state": stateName == null ? '' : stateName.toString(),
          "city": city == null ? '' : city.toString(),
          "tpa_id": HealthInauranceController.tpaid.toString(),
          "txt_hospital_name": hospitalname.text,
          "insurer_id": HealthInauranceController.insurerId.toString(),
        },
        headers: {
          "Authorization": SignUpcontroller.currentUserToken
          // "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEwMTAzNSIsImxvZ2dlZF9pbiI6dHJ1ZSwiZGV2aWNlX2lkIjoiOTc3NmZjY2MyOWQ2NDlhZSIsImVtcGxveWVlX2lkIjoiMTA0NDYiLCJjb3Jwb3JhdGVfaWQiOiIzMzEiLCJicm9rZXJfaWQiOiIyMyIsInRpbWUiOjE2NjM5OTkzMzZ9.VP9rPH2-5d1tuiY34nHIX61Snd4ACGntjw4ixFcjcp8"
        });
    var decodedResponse = json.decode(response.body);
    setState(() {
      HospitalList = decodedResponse['hospital'];
    });
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
                  Spacer(),
                  SvgPicture.asset('assets/Images/Notification.svg'),
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
                      FutureBuilder(
                          future:
                              HealthInauranceController.PolicyListingFunction(),
                          builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) {
                            return Row(
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
                                    itemCount: HealthInauranceController
                                        .policyList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            changeTab = '';
                                            policytype =
                                                HealthInauranceController
                                                        .policyList[index]
                                                    ['policy_type'];
                                            HealthInauranceController
                                                    .indexvalue =
                                                HealthInauranceController
                                                    .policyList
                                                    .indexOf(
                                                        HealthInauranceController
                                                            .policyList[index]);
                                          });
                                        },
                                        child: HealthInauranceController
                                                            .policyList[index]
                                                        ['policy_type'] ==
                                                    'GPA' ||
                                                HealthInauranceController
                                                            .policyList[index]
                                                        ['policy_type'] ==
                                                    'GTL'
                                            ? Container()
                                            : Container(
                                                alignment: Alignment.center,
                                                height: 5.h,
                                                width: 8.h,
                                                margin:
                                                    EdgeInsets.only(left: 1.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    border: Border.all(
                                                        width: 1.5,
                                                        color: policycolor),
                                                    color: HealthInauranceController
                                                                .indexvalue ==
                                                            HealthInauranceController
                                                                .policyList
                                                                .indexOf(
                                                                    HealthInauranceController
                                                                            .policyList[
                                                                        index])
                                                        ? policycolor
                                                        : Colors.transparent),
                                                child: CommonText(
                                                  label:
                                                      '${HealthInauranceController.policyList[index]['policy_type']}',
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12.sp,
                                                      color: HealthInauranceController
                                                                  .indexvalue ==
                                                              HealthInauranceController
                                                                  .policyList
                                                                  .indexOf(HealthInauranceController
                                                                          .policyList[
                                                                      index])
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontFamily:
                                                          'Nunito Sans'),
                                                ),
                                              ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          }),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      Text(
                        'Network Hospital',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            fontFamily: 'Nunito Sans',
                            color: Color(0xff021B8D)),
                      ),
                      Text(
                        '( These hospitals provide cashless facility for this policy)',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            fontFamily: 'Nunito Sans',
                            color: Colors.grey.shade500),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Material(
                        elevation: 3.0,
                        shadowColor: Colors.white,
                        child: TextFormField(
                          controller: hospitalname,
                          decoration: InputDecoration(
                              hintText: 'Enter Hospital Name',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans'),
                              contentPadding: EdgeInsets.all(2.h),
                              prefixIcon: Container(
                                padding: EdgeInsets.all(2.h),
                                child: SvgPicture.asset(
                                  'assets/Images/search_hospital.svg',
                                ),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      SearchHospitalList();
                                    });
                                  },
                                  icon: Icon(
                                    Icons.search_rounded,
                                    color: policycolor,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0.5),
                                  borderRadius: BorderRadius.circular(6)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0.5),
                                  borderRadius: BorderRadius.circular(6)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0.5),
                                  borderRadius: BorderRadius.circular(6)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0.5),
                                  borderRadius: BorderRadius.circular(6)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Center(
                        child: CommonText(
                          label: 'Or',
                          textStyle: labelTextStyleGreyReguler16,
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 6.h,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 0.5.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5, color: Color(0xffe4e4e4)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffe4e4e4).withOpacity(0.5),
                                  spreadRadius: 1.5,
                                  blurRadius: 0.5,
                                  offset: Offset(0, 1),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 1.h, right: 1.h),
                              child: DropdownButton(
                                  focusColor: Colors.white,
                                  menuMaxHeight: 300.0,
                                  isExpanded: true,
                                  isDense: true,
                                  hint: Padding(
                                    padding: EdgeInsets.only(top: 2.0),
                                    child: CommonText(
                                      label: 'Select State',
                                      textStyle: TextStyle(
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: 'Nunito Sans'),
                                    ),
                                  ),
                                  underline: Container(
                                    color: Colors.white,
                                  ),
                                  value: state,
                                  items: HealthInauranceController.AllStateList
                                      .map((item) {
                                    return DropdownMenuItem(
                                        enabled: true,
                                        onTap: () {
                                          stateName = item;
                                        },
                                        value: item.toString(),
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              fontFamily: 'Nunito Sans',
                                              overflow: TextOverflow.ellipsis),
                                        ));
                                  }).toList(),
                                  onChanged: (String? _v) {
                                    setState(() {
                                      state = _v!;
                                    });
                                  }),
                            ),
                          ),
                          FutureBuilder(
                            future: HealthInauranceController.GetcityFunction(
                                stateName),
                            builder: (BuildContext context,
                                AsyncSnapshot<dynamic> snapshot) {
                              return Container(
                                alignment: Alignment.center,
                                height: 6.h,
                                width: 20.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5, color: Color(0xffe4e4e4)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffe4e4e4).withOpacity(0.5),
                                      spreadRadius: 1.5,
                                      blurRadius: 0.5,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 1.h, right: 1.h),
                                  child: DropdownButton(
                                      focusColor: Colors.white,
                                      menuMaxHeight: 300.0,
                                      isExpanded: true,
                                      isDense: true,
                                      hint: Padding(
                                        padding: EdgeInsets.only(top: 2.0),
                                        child: CommonText(
                                          label: 'Select city',
                                          textStyle: TextStyle(
                                              color: Color(0xffb2b2b2),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              fontFamily: 'Nunito Sans'),
                                        ),
                                      ),
                                      underline: Container(
                                        color: Colors.white,
                                      ),
                                      value: city,
                                      items: HealthInauranceController
                                          .CityNamelist.map((item) {
                                        return DropdownMenuItem(
                                            enabled: true,
                                            onTap: () {
                                              cityName = item['city'];
                                            },
                                            value: item['city'].toString(),
                                            child: Text(
                                              item['city'],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  fontFamily: 'Nunito Sans',
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                            ));
                                      }).toList(),
                                      onChanged: (String? _v) {
                                        setState(() {
                                          city = _v!;
                                        });
                                      }),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              SearchHospitalList();
                              print(stateName);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 16.h,
                            margin: EdgeInsets.only(top: 2.5.h, bottom: 2.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1.5, color: Color(0xffe4e4e4)),
                              color: policycolor,
                            ),
                            child: CommonText(
                              label: 'Search',
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontFamily: 'Nunito Sans'),
                            ),
                          ),
                        ),
                      ),
                      FutureBuilder(
                        future: SearchHospitalList(),
                        builder: (BuildContext context,
                            AsyncSnapshot<dynamic> snapshot) {
                          return ListView.builder(
                            controller: ScrollController(),
                            shrinkWrap: true,
                            itemCount: HospitalList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                // padding: EdgeInsets.all(0.3.h),
                                margin: EdgeInsets.only(bottom: 1.5.h),
                                decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: commonboxshadow),
                                child: Theme(
                                  data: ThemeData().copyWith(
                                      dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                    title: CommonText(
                                      label:
                                          "${HospitalList[index]['hospital_name']}",
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: policycolor,
                                          fontFamily: 'Nunito Sans'),
                                      maxLines: 1,
                                    ),
                                    children: [
                                      Container(
                                        // height: 46.2.h,
                                        width: 100.h,
                                        margin: EdgeInsets.only(
                                          bottom: 1.4.h,
                                        ),
                                        padding: EdgeInsets.only(
                                          left: 1.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'Hospital Name :',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium14),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['hospital_name'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label:
                                                          'Hospital Address :',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['hospital_address'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'Location:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['location'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'Landmark:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['landmark'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'City:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['city'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'State:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['state'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'Pincode:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                            ['pincode']
                                                        .toString(),
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'Email:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                        ['email'],
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 15.h,
                                                  child: CommonText(
                                                      label: 'Phone:',
                                                      maxLines: 1,
                                                      textStyle:
                                                          labelTextStyleBlackMedium12),
                                                ),
                                                SizedBox(
                                                  width: 23.h,
                                                  child: CommonText(
                                                    label: HospitalList[index]
                                                            ['phone']
                                                        .toString(),
                                                    maxLines: 2,
                                                    textStyle:
                                                        labelTextStyleBlackReguler12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
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
        )));
  }
}
