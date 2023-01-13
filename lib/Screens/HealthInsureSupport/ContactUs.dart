// ignore_for_file: deprecated_member_use
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Custom/Custom_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bank_sathi/Controller/HealthInsureController.dart';
import 'package:bank_sathi/Generic/Common/CommonBottomBar.dart';
import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

var changetabcolor = 'Support';

class _ContactUsState extends State<ContactUs> {
  var HealthInauranceController = Get.put(HealthInsuranceSupportController());
  @override
  void initState() {
    changetabcolor = 'Support';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PWhite,
      appBar: PreferredSize(
          child: SafeArea(child: CustomAppBar()),
          preferredSize: Size(
            100.h,
            7.h,
          )),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(1.6.h),
              width: 100.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder(
                      future: HealthInauranceController.ContactUsFunction(),
                      builder: (BuildContext context,
                          AsyncSnapshot<dynamic> snapshot) {
                        return HealthInauranceController.ContactList.length ==
                                    0 ||
                                // ignore: unnecessary_null_comparison
                                HealthInauranceController.ContactList.length ==
                                    null
                            ? Padding(
                                padding: EdgeInsets.only(top: 8.h, bottom: 4.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/Images/No_Claims.gif'),
                                    SizedBox(
                                      height: 1.5.h,
                                    ),
                                    CommonText(
                                      label: 'No Policy Found',
                                      textStyle: labelTextStyleBlackReguler19,
                                    )
                                  ],
                                ),
                              )
                            : ListView.builder(
                                itemCount: HealthInauranceController
                                    .ContactList.length,
                                shrinkWrap: true,
                                controller: ScrollController(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 1.8.h),
                                    padding: EdgeInsets.all(1.2.h),
                                    decoration: BoxDecoration(
                                      color: PWhite,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: commonboxshadow,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CommonTextNunito(
                                                      label: 'Name : ',
                                                      colorT: Colors.black,
                                                      fontw8: FontWeight.w400,
                                                      size: 12.sp,
                                                      maxline: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    CommonTextNunito(
                                                      label:
                                                          '${HealthInauranceController.ContactList[index]['full_name']}',
                                                      colorT: Colors.black,
                                                      fontw8: FontWeight.w400,
                                                      size: 12.sp,
                                                      maxline: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CommonTextNunito(
                                                      label: 'Phone : ',
                                                      colorT: Colors.black,
                                                      fontw8: FontWeight.w400,
                                                      size: 12.sp,
                                                      maxline: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          launch(
                                                            'tel: ${HealthInauranceController.ContactList[index]['mobile_number']}',
                                                          );
                                                        });
                                                      },
                                                      child: CommonTextNunito(
                                                        label:
                                                            '${HealthInauranceController.ContactList[index]['mobile_number']}',
                                                        colorT:
                                                            Color(0xff2479ab),
                                                        fontw8: FontWeight.w400,
                                                        size: 12.sp,
                                                        maxline: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              padding: EdgeInsets.all(1.1.h),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: Color(0xff4BC4F9)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 1.h,
                                                  ),
                                                  CommonTextNunito(
                                                    label: 'Level : ',
                                                    colorT: Colors.white,
                                                    fontw8: FontWeight.w400,
                                                    size: 12.sp,
                                                    maxline: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  CommonTextNunito(
                                                    label:
                                                        '${HealthInauranceController.ContactList[index]['user_level']}',
                                                    colorT: Colors.white,
                                                    fontw8: FontWeight.w400,
                                                    size: 12.sp,
                                                    maxline: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CommonTextNunito(
                                              label: 'Email : ',
                                              colorT: Colors.black,
                                              fontw8: FontWeight.w400,
                                              size: 12.sp,
                                              maxline: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                String? encodeQueryParameters(
                                                    Map<String, String>
                                                        params) {
                                                  return params.entries
                                                      .map((MapEntry<String,
                                                                  String>
                                                              e) =>
                                                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                                      .join('&');
                                                }

                                                // ···
                                                final Uri emailLaunchUri = Uri(
                                                  scheme: 'mailto',
                                                  path:
                                                      '${HealthInauranceController.ContactList[index]['email_id']}',
                                                  query: encodeQueryParameters(<
                                                      String, String>{
                                                    'subject': 'Contact Us',
                                                  }),
                                                );

                                                launchUrl(emailLaunchUri);
                                              },
                                              child: CommonTextNunito(
                                                label:
                                                    '${HealthInauranceController.ContactList[index]['email_id']}',
                                                colorT: Colors.black,
                                                fontw8: FontWeight.w400,
                                                size: 12.sp,
                                                maxline: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CommonTextNunito(
                                              label: 'Address : ',
                                              colorT: Colors.black,
                                              fontw8: FontWeight.w400,
                                              size: 12.sp,
                                              maxline: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Expanded(
                                              child: CommonTextNunito(
                                                label:
                                                    '${HealthInauranceController.ContactList[index]['full_address']}',
                                                colorT: Colors.black,
                                                fontw8: FontWeight.w400,
                                                size: 12.sp,
                                                maxline: 5,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
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
