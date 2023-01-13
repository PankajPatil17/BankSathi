import 'package:bank_sathi/Generic/Common/Common_Text.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class EmpBenProgram extends StatefulWidget {
  const EmpBenProgram({super.key});

  @override
  State<EmpBenProgram> createState() => _EmpBenProgramState();
}

class _EmpBenProgramState extends State<EmpBenProgram> {
  TextEditingController EmpName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController EmpNumber = TextEditingController();
  TextEditingController Suminsured = TextEditingController();
  TextEditingController MobileNum = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController dependentNameone = TextEditingController();
  TextEditingController dependentNametwo = TextEditingController();
  TextEditingController spousedependentName = TextEditingController();
  TextEditingController sondependentName = TextEditingController();
  TextEditingController daughterdependentName = TextEditingController();

  String? genderone;
  String? gendertwo;
  String? spouseGender;
  String? sonGender;
  String? daughterGender;
  String? employeegender;
  String? childonerelation;
  String? childtworelation;

  int val = -1;
  String? one;

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
                SvgPicture.asset('assets/Images/Emedlife.svg'),
                Spacer(),
                SvgPicture.asset('assets/Images/Notification.svg'),
              ],
            ),
          )),
          preferredSize: Size(100.h, 20.h)),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.all(1.8.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 2.h),
                padding: EdgeInsets.all(1.1.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: commonboxshadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CommonText(
                      label: 'Group Mediclaim Policy',
                      textStyle: labelTextStyleBlackBold16,
                      maxLines: 1,
                    ),
                    CommonText(
                      label: 'Sum Insured - 500000',
                      textStyle: labelTextStyleBlackBold16,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 1.5.h, right: 1.5.h, top: 2.h, bottom: 2.h),
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: commonboxshadow,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/Images/Employee details.svg'),
                          SizedBox(
                            width: 1.5.h,
                          ),
                          Text(
                            'Employee details',
                            style: TextStyle(
                                color: Color(0xff021B8D),
                                fontFamily: 'Poppins',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      MemberHeaderText('Employee Name'),
                      TextFormField(
                        controller: EmpName,
                        readOnly: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Color(0xffF5f5f5),
                            ),
                          ),
                          fillColor: Color(0xffF8F8F8),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffBFBFBF))),
                          hintText: 'Sanjay',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 11.sp,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ),
                      MemberHeaderText('Email'),
                      TextFormField(
                        controller: Email,
                        readOnly: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          fillColor: Color(0xffF8F8F8),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffBFBFBF))),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Color(0xffF5f5f5),
                            ),
                          ),
                          hintText: 'Sanjay@medibhai.com',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11.sp,
                              color: Colors.black,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ),
                      MemberHeaderText('Employee Number'),
                      TextFormField(
                        controller: EmpNumber,
                        readOnly: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          fillColor: Color(0xffF8F8F8),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffBFBFBF))),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Color(0xffF5f5f5),
                            ),
                          ),
                          hintText: 'A11213',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 11.sp,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ),
                      MemberHeaderText('Mobile Number'),
                      TextFormField(
                        controller: MobileNum,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          counterText: '',
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff575757))),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Color(0xffe4e4e4),
                            ),
                          ),
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11.sp,
                              fontFamily: 'Nunito Sans'),
                        ),
                      )
                    ]),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 2.5.h),
              //   padding: EdgeInsets.only(
              //       left: 1.5.h, right: 1.5.h, top: 2.h, bottom: 2.h),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(6),
              //     boxShadow: commonboxshadow,
              //   ),
              //   child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              // Text(
              //   'Dependent Details',
              //   style: TextStyle(
              //       fontWeight: FontWeight.w500,
              //       fontSize: 12.sp,
              //       fontFamily: 'Nunito Sans',
              //       color: Colors.black),
              // ),
              //         MemberHeaderText('Relation'),
              //         TextFormField(
              //           controller: EmpName,
              //           readOnly: true,
              //           keyboardType: TextInputType.emailAddress,
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 10.0,
              //             ),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(6.0),
              //               borderSide: BorderSide(
              //                 color: Color(0xffe4e4e4),
              //               ),
              //             ),
              //             hintText: 'Employee',
              //             hintStyle: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 color: Colors.black,
              //                 fontSize: 11.sp,
              //                 fontFamily: 'Nunito Sans'),
              //           ),
              //         ),
              //         MemberHeaderText('Name'),
              //         TextFormField(
              //           controller: dependentNameone,
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 10.0,
              //             ),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(6.0),
              //               borderSide: BorderSide(
              //                 color: Color(0xffe4e4e4),
              //               ),
              //             ),
              //             hintText: 'Sanjay',
              //             hintStyle: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 11.sp,
              //                 color: Colors.black,
              //                 fontFamily: 'Nunito Sans'),
              //           ),
              //         ),
              //         MemberHeaderText('Date of Birth'),
              //         TextFormField(
              //           keyboardType: TextInputType.emailAddress,
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 10.0,
              //             ),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(6.0),
              //               borderSide: BorderSide(
              //                 color: Color(0xffe4e4e4),
              //               ),
              //             ),
              //             hintText: _selectedDateOne != null
              //                 ? _selectedDateOne
              //                     .toString()
              //                     .replaceRange(11, 23, '')
              //                 : 'Date of Birth',
              //             suffixIcon: IconButton(
              //               icon: Icon(
              //                 Icons.calendar_today_rounded,
              //                 color: Color(0xffb2b2b2),
              //                 size: 2.3.h,
              //               ),
              //               onPressed: () {
              //                 setState(() {
              //                   _presentDatePickerOne();
              //                 });
              //               },
              //             ),
              //             hintStyle: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 color: Colors.black,
              //                 fontSize: 11.sp,
              //                 fontFamily: 'Nunito Sans'),
              //           ),
              //         ),
              //         MemberHeaderText('Gender'),
              //         Container(
              //           height: 6.h,
              //           width: 100.h,
              //           decoration: BoxDecoration(
              //               color: Colors.white,
              //               borderRadius: BorderRadius.circular(6),
              //               border: Border.all(
              //                   color: Color(0xffb2b2b2), width: 1.0)),
              //           child: Padding(
              //             padding: EdgeInsets.only(
              //                 left: 1.h, right: 1.h, top: 0.9.h),
              //             child: DropdownButton(
              //                 focusColor: Colors.white,
              //                 menuMaxHeight: 300.0,
              //                 isExpanded: true,
              //                 isDense: true,
              //                 hint: CommonText(
              //                   label: 'Select Gender',
              //                   textStyle: labelTextStyleGreyReguler14,
              //                 ),
              //                 underline: Container(
              //                   color: Colors.white,
              //                 ),
              //                 value: genderone,
              //                 items: GenderList.map((item) {
              //                   return DropdownMenuItem(
              //                       enabled: true,
              //                       onTap: () {},
              //                       value: item.toString(),
              //                       child: Text(
              //                         item,
              //                         style: TextStyle(
              //                             color: Colors.black,
              //                             fontWeight: FontWeight.w400,
              //                             fontSize: 14,
              //                             fontFamily: 'Nunito Sans',
              //                             overflow: TextOverflow.ellipsis),
              //                       ));
              //                 }).toList(),
              //                 onChanged: (String? _v) {
              //                   setState(() {
              //                     genderone = _v!;
              //                   });
              //                 }),
              //           ),
              //         ),
              //         MemberHeaderText('Relation'),
              //         TextFormField(
              //           controller: EmpName,
              //           readOnly: true,
              //           keyboardType: TextInputType.emailAddress,
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 10.0,
              //             ),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(6.0),
              //               borderSide: BorderSide(
              //                 color: Color(0xffe4e4e4),
              //               ),
              //             ),
              //             hintText: 'Spouse',
              //             hintStyle: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 color: Colors.black,
              //                 fontSize: 11.sp,
              //                 fontFamily: 'Nunito Sans'),
              //           ),
              //         ),
              //         MemberHeaderText('Name'),
              //         TextFormField(
              //           controller: dependentNametwo,
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 10.0,
              //             ),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(6.0),
              //               borderSide: BorderSide(
              //                 color: Color(0xffe4e4e4),
              //               ),
              //             ),
              //             hintText: 'Sophiya',
              //             hintStyle: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 11.sp,
              //                 color: Colors.black,
              //                 fontFamily: 'Nunito Sans'),
              //           ),
              //         ),
              //         MemberHeaderText('Date of Birth'),
              //         TextFormField(
              //           keyboardType: TextInputType.emailAddress,
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 10.0,
              //             ),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(6.0),
              //               borderSide: BorderSide(
              //                 color: Color(0xffe4e4e4),
              //               ),
              //             ),
              //             hintText: _selectedDateTwo != null
              //                 ? _selectedDateTwo
              //                     .toString()
              //                     .replaceRange(11, 23, '')
              //                 : 'Date of Birth',
              //             suffixIcon: IconButton(
              //               icon: Icon(
              //                 Icons.calendar_today_rounded,
              //                 color: Color(0xffb2b2b2),
              //                 size: 2.3.h,
              //               ),
              //               onPressed: () {
              //                 setState(() {
              //                   _presentDatePickerTwo();
              //                 });
              //               },
              //             ),
              //             hintStyle: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 color: Colors.black,
              //                 fontSize: 11.sp,
              //                 fontFamily: 'Nunito Sans'),
              //           ),
              //         ),
              //         MemberHeaderText('Gender'),
              //         Container(
              //           height: 6.h,
              //           width: 100.h,
              //           decoration: BoxDecoration(
              //               color: Colors.white,
              //               borderRadius: BorderRadius.circular(6),
              //               border: Border.all(
              //                   color: Color(0xffb2b2b2), width: 1.0)),
              //           child: Padding(
              //             padding: EdgeInsets.only(
              //                 left: 1.h, right: 1.h, top: 0.9.h),
              //             child: DropdownButton(
              //                 focusColor: Colors.white,
              //                 menuMaxHeight: 300.0,
              //                 isExpanded: true,
              //                 isDense: true,
              //                 hint: CommonText(
              //                   label: 'Select Gender',
              //                   textStyle: labelTextStyleGreyReguler14,
              //                 ),
              //                 underline: Container(
              //                   color: Colors.white,
              //                 ),
              //                 value: gendertwo,
              //                 items: GenderList.map((item) {
              //                   return DropdownMenuItem(
              //                       enabled: true,
              //                       onTap: () {},
              //                       value: item.toString(),
              //                       child: Text(
              //                         item,
              //                         style: TextStyle(
              //                             color: Colors.black,
              //                             fontWeight: FontWeight.w400,
              //                             fontSize: 14,
              //                             fontFamily: 'Nunito Sans',
              //                             overflow: TextOverflow.ellipsis),
              //                       ));
              //                 }).toList(),
              //                 onChanged: (String? _v) {
              //                   setState(() {
              //                     gendertwo = _v!;
              //                   });
              //                 }),
              //           ),
              //         ),
              //       ]),
              // ),
              SizedBox(
                height: 2.h,
              ),

              Container(
                padding: EdgeInsets.only(
                    left: 1.5.h, right: 1.5.h, top: 2.h, bottom: 2.h),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: commonboxshadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            'assets/Images/Members_Covered_details.svg'),
                        SizedBox(
                          width: 1.5.h,
                        ),
                        Text(
                          'Members Covered',
                          style: TextStyle(
                              color: Color(0xff021B8D),
                              fontFamily: 'Poppins',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 2.h, top: 2.h),
                      padding: EdgeInsets.only(
                        left: 1.5.h,
                        right: 1.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: commonboxshadow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ExpansionTile(
                              tilePadding: EdgeInsets.only(left: 0.h),
                              iconColor: Color(0xff021B8D),
                              title: CommonText(
                                label: 'RelationShip: Employee',
                                textStyle: labelTextStyleBlackReguler16,
                              ),
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Name')],
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: 'Dependent Name',
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: Colors.black,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Date of Birth')],
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: _employeeselectedDate != null
                                        ? _employeeselectedDate
                                            .toString()
                                            .replaceRange(11, 23, '')
                                        : 'Date of Birth',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today_rounded,
                                        color: Color(0xffb2b2b2),
                                        size: 2.3.h,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _employeepresentDatePicker();
                                        });
                                      },
                                    ),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Gender')],
                                ),
                                Container(
                                  height: 5.5.h,
                                  width: 100.h,
                                  margin: EdgeInsets.only(bottom: 2.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Color(0xffb2b2b2),
                                          width: 1.0)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 0.9.h),
                                    child: DropdownButton(
                                        focusColor: Colors.white,
                                        menuMaxHeight: 300.0,
                                        isExpanded: true,
                                        isDense: true,
                                        hint: CommonText(
                                          label: 'Select Gender',
                                          textStyle:
                                              labelTextStyleGreyReguler14,
                                        ),
                                        underline: Container(
                                          color: Colors.white,
                                        ),
                                        value: employeegender,
                                        items: GenderList.map((item) {
                                          return DropdownMenuItem(
                                              enabled: true,
                                              onTap: () {},
                                              value: item.toString(),
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    fontFamily: 'Nunito Sans',
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ));
                                        }).toList(),
                                        onChanged: (String? _v) {
                                          setState(() {
                                            employeegender = _v!;
                                          });
                                        }),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: commonboxshadow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ExpansionTile(
                              tilePadding: EdgeInsets.only(left: 0.h),
                              title: CommonText(
                                label: 'Relationship : Spouse',
                                textStyle: labelTextStyleBlackReguler16,
                              ),
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Name')],
                                ),
                                TextFormField(
                                  controller: spousedependentName,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: 'Dependent Name',
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: Colors.black,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Date of Birth')],
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: _spouseselectedDate != null
                                        ? _spouseselectedDate
                                            .toString()
                                            .replaceRange(11, 23, '')
                                        : 'Date of Birth',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today_rounded,
                                        color: Color(0xffb2b2b2),
                                        size: 2.3.h,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _spousepresentDatePicker();
                                        });
                                      },
                                    ),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Gender')],
                                ),
                                Container(
                                  height: 5.5.h,
                                  width: 100.h,
                                  margin: EdgeInsets.only(bottom: 2.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Color(0xffb2b2b2),
                                          width: 1.0)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 0.9.h),
                                    child: DropdownButton(
                                        focusColor: Colors.white,
                                        menuMaxHeight: 300.0,
                                        isExpanded: true,
                                        isDense: true,
                                        hint: CommonText(
                                          label: 'Select Gender',
                                          textStyle:
                                              labelTextStyleGreyReguler14,
                                        ),
                                        underline: Container(
                                          color: Colors.white,
                                        ),
                                        value: spouseGender,
                                        items: GenderList.map((item) {
                                          return DropdownMenuItem(
                                              enabled: true,
                                              onTap: () {},
                                              value: item.toString(),
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    fontFamily: 'Nunito Sans',
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ));
                                        }).toList(),
                                        onChanged: (String? _v) {
                                          setState(() {
                                            spouseGender = _v!;
                                          });
                                        }),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),

// Relationship: SOn

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: commonboxshadow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ExpansionTile(
                              tilePadding: EdgeInsets.only(left: 0.h),
                              title: CommonText(
                                label: 'Relationship : Child 1',
                                textStyle: labelTextStyleBlackReguler16,
                              ),
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MemberHeaderText('Select Relationship')
                                  ],
                                ),
                                Container(
                                  height: 5.5.h,
                                  width: 100.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Color(0xffb2b2b2),
                                          width: 1.0)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 0.9.h),
                                    child: DropdownButton(
                                        focusColor: Colors.white,
                                        menuMaxHeight: 300.0,
                                        isExpanded: true,
                                        isDense: true,
                                        hint: CommonText(
                                          label: 'Select Relationship',
                                          textStyle:
                                              labelTextStyleGreyReguler14,
                                        ),
                                        underline: Container(
                                          color: Colors.white,
                                        ),
                                        value: childonerelation,
                                        items: RelationShipList.map((item) {
                                          return DropdownMenuItem(
                                              enabled: true,
                                              onTap: () {},
                                              value: item.toString(),
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    fontFamily: 'Nunito Sans',
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ));
                                        }).toList(),
                                        onChanged: (String? _v) {
                                          setState(() {
                                            childonerelation = _v!;
                                          });
                                        }),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Name')],
                                ),
                                TextFormField(
                                  controller: sondependentName,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: 'Dependent Name',
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: Colors.black,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Date of Birth')],
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: _sonselectedDate != null
                                        ? _sonselectedDate
                                            .toString()
                                            .replaceRange(11, 23, '')
                                        : 'Date of Birth',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today_rounded,
                                        color: Color(0xffb2b2b2),
                                        size: 2.3.h,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _sonpresentDatePicker();
                                        });
                                      },
                                    ),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Gender')],
                                ),
                                Container(
                                  height: 5.5.h,
                                  width: 100.h,
                                  margin: EdgeInsets.only(bottom: 2.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Color(0xffb2b2b2),
                                          width: 1.0)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 0.9.h),
                                    child: DropdownButton(
                                        focusColor: Colors.white,
                                        menuMaxHeight: 300.0,
                                        isExpanded: true,
                                        isDense: true,
                                        hint: CommonText(
                                          label: 'Select Gender',
                                          textStyle:
                                              labelTextStyleGreyReguler14,
                                        ),
                                        underline: Container(
                                          color: Colors.white,
                                        ),
                                        value: sonGender,
                                        items: GenderList.map((item) {
                                          return DropdownMenuItem(
                                              enabled: true,
                                              onTap: () {},
                                              value: item.toString(),
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    fontFamily: 'Nunito Sans',
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ));
                                        }).toList(),
                                        onChanged: (String? _v) {
                                          setState(() {
                                            sonGender = _v!;
                                          });
                                        }),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: commonboxshadow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ExpansionTile(
                              tilePadding: EdgeInsets.only(left: 0.h),
                              title: CommonText(
                                label: 'Relationship : Child 2',
                                textStyle: labelTextStyleBlackReguler16,
                              ),
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MemberHeaderText('Select Relationship')
                                  ],
                                ),
                                Container(
                                  height: 5.5.h,
                                  width: 100.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Color(0xffb2b2b2),
                                          width: 1.0)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 0.9.h),
                                    child: DropdownButton(
                                        focusColor: Colors.white,
                                        menuMaxHeight: 300.0,
                                        isExpanded: true,
                                        isDense: true,
                                        hint: CommonText(
                                          label: 'Select Relationship',
                                          textStyle:
                                              labelTextStyleGreyReguler14,
                                        ),
                                        underline: Container(
                                          color: Colors.white,
                                        ),
                                        value: childtworelation,
                                        items: RelationShipList.map((item) {
                                          return DropdownMenuItem(
                                              enabled: true,
                                              onTap: () {},
                                              value: item.toString(),
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    fontFamily: 'Nunito Sans',
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ));
                                        }).toList(),
                                        onChanged: (String? _v) {
                                          setState(() {
                                            childtworelation = _v!;
                                          });
                                        }),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Name')],
                                ),
                                TextFormField(
                                  controller: daughterdependentName,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: 'Dependent Name',
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: Colors.black,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Date of Birth')],
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                        color: Color(0xffe4e4e4),
                                      ),
                                    ),
                                    hintText: _daughterselectedDate != null
                                        ? _daughterselectedDate
                                            .toString()
                                            .replaceRange(11, 23, '')
                                        : 'Date of Birth',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today_rounded,
                                        color: Color(0xffb2b2b2),
                                        size: 2.3.h,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _daughterpresentDatePicker();
                                        });
                                      },
                                    ),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [MemberHeaderText('Gender')],
                                ),
                                Container(
                                  height: 5.5.h,
                                  width: 100.h,
                                  margin: EdgeInsets.only(bottom: 2.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Color(0xffb2b2b2),
                                          width: 1.0)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 0.9.h),
                                    child: DropdownButton(
                                        focusColor: Colors.white,
                                        menuMaxHeight: 300.0,
                                        isExpanded: true,
                                        isDense: true,
                                        hint: CommonText(
                                          label: 'Select Gender',
                                          textStyle:
                                              labelTextStyleGreyReguler14,
                                        ),
                                        underline: Container(
                                          color: Colors.white,
                                        ),
                                        value: daughterGender,
                                        items: GenderList.map((item) {
                                          return DropdownMenuItem(
                                              enabled: true,
                                              onTap: () {},
                                              value: item.toString(),
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    fontFamily: 'Nunito Sans',
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ));
                                        }).toList(),
                                        onChanged: (String? _v) {
                                          setState(() {
                                            daughterGender = _v!;
                                          });
                                        }),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Container(
                width: 100.h,
                margin: EdgeInsets.only(top: 2.2.h),
                padding: EdgeInsets.only(
                    top: 2.h, bottom: 2.h, left: 1.5.h, right: 1.5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffffffff),
                    boxShadow: commonboxshadow),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Images/Top up Policies.svg'),
                        SizedBox(
                          width: 1.5.h,
                        ),
                        Text(
                          'Top up Policies',
                          style: TextStyle(
                              color: Color(0xff021B8D),
                              fontFamily: 'Poppins',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Please select the suitable options',
                      style: TextStyle(
                          color: Color(0xffb2b2b2),
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp),
                    ),
                    Container(
                      padding: EdgeInsets.all(1.5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100.h,
                            margin: EdgeInsets.only(bottom: 2.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: commonboxshadow,
                                color: PWhite),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: val,
                                  onChanged: (value) {
                                    setState(() {
                                      val = 1;
                                      one = "300000";
                                    });
                                  },
                                  activeColor: Color(0xff4BC4F9),
                                ),
                                Expanded(
                                  child: Text(
                                    "Sum Insured = 3,00,000 INR (w/o GST) Premium = 500 INR",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff575757),
                                        fontSize: 10.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100.h,
                            // margin: EdgeInsets.only(bottom: 1.2.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: commonboxshadow,
                                color: PWhite),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: val,
                                  onChanged: (value) {
                                    setState(() {
                                      val = 2;
                                      one = "00000";
                                    });
                                  },
                                  activeColor: Color(0xff4BC4F9),
                                ),
                                Expanded(
                                  child: Text(
                                    "Sum Insured = 3,00,000 INR (w/o GST) = 800 INR",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff575757),
                                        fontSize: 10.sp,
                                        fontFamily: 'Nunito Sans'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Get.snackbar('Success', 'Your Request Send Successfully');
                  Get.to(HomePage());
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
                          Color(0xff4BC4F9),
                          Color(0xff4BC4F9),
                        ])),
                    child: CommonText(
                      label: 'Submit',
                      textStyle: labelTextStyleWhiteReguler16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ))),
    );
  }

  MemberHeaderText(memberLabel) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.6.h),
      child: Text(
        memberLabel,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            fontFamily: 'Nunito Sans'),
      ),
    );
  }

  List RelationShipList = ['Select Relationship', 'Son', 'Daughter'];

  List GenderList = [
    'Select Gender',
    'Male',
    'Female',
  ];

  // DateTime? _selectedDateOne;

  // void _presentDatePickerOne() {
  //   // showDatePicker is a pre-made funtion of Flutter
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           firstDate: DateTime(1947),
  //           lastDate: DateTime.now())
  //       .then((pickedDate) {
  //     if (pickedDate == null) {
  //       return;
  //     }
  //     setState(() {
  //       _selectedDateOne = pickedDate;
  //     });
  //   });
  // }

  // DateTime? _selectedDateTwo;

  // void _presentDatePickerTwo() {
  //   // showDatePicker is a pre-made funtion of Flutter
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           firstDate: DateTime(1947),
  //           lastDate: DateTime.now())
  //       .then((pickedDate) {
  //     if (pickedDate == null) {
  //       return;
  //     }
  //     setState(() {
  //       _selectedDateTwo = pickedDate;
  //     });
  //   });
  // }

  DateTime? _spouseselectedDate;

  void _spousepresentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1947),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _spouseselectedDate = pickedDate;
      });
    });
  }

  DateTime? _sonselectedDate;

  void _sonpresentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1947),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _sonselectedDate = pickedDate;
      });
    });
  }

  DateTime? _daughterselectedDate;

  void _daughterpresentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1947),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _daughterselectedDate = pickedDate;
      });
    });
  }

  DateTime? _employeeselectedDate;

  void _employeepresentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1947),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _employeeselectedDate = pickedDate;
      });
    });
  }
}
