// import 'package:emedlife/Screens/SignUp/LoginScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:emedlife/Generic/Common/Common_Text.dart';
// import 'package:sizer/sizer.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   bool onLastpage = false;
//   bool onFirstpage = false;
//   final controller = PageController();

//   @override
//   void initState() {
//     onFirstpage = true;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade50,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: 2.h, right: 2.h, bottom: 5.h),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.offAll(LoginScreen());
//                     },
//                     child: CommonText(
//                       label: 'Skip',
//                       textStyle: TextStyle(
//                           color: Color(0xff021B8D),
//                           fontFamily: 'Nunito Sans',
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//                 height: 5.h,
//                 width: 20.h,
//                 margin: EdgeInsets.only(bottom: 6.h),
//                 child: SvgPicture.asset(
//                   'assets/Images/BankSathi.svg',
//                   fit: BoxFit.fill,
//                 )),
//             Container(
//               height: 69.h,
//               child: PageView(
//                 controller: controller,
//                 physics: ScrollPhysics(),
//                 allowImplicitScrolling: true,
//                 pageSnapping: true,
//                 onPageChanged: (index) {
//                   setState(() {
//                     onLastpage = (index == 2);
//                     onFirstpage = (index == 0);
//                   });
//                 },
//                 children: [
//                   FirstOnboarding(),
//                   SecondOnboarding(),
//                   ThirdOnboarding(),
//                 ],
//               ),
//             ),
//             // Spacer(),
//           ],
//         ),
//       ),
//     );
//   }

// // ONBOARDING CODE

//   FirstOnboarding() {
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             height: 30.h,
//             child: SvgPicture.asset('assets/Images/ob1.svg'),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 9.0.h, bottom: 2.5.h, left: 3.h),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CommonText(
//                   label: 'Lorem ipsum',
//                   textStyle: TextStyle(
//                       fontFamily: 'Nunito Sans',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 19.sp,
//                       color: Color(0xff021B8D)),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3.h),
//             child: Text(
//               'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed',
//               textAlign: TextAlign.center,
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   fontFamily: 'Nunito Sans',
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14.sp,
//                   color: Colors.black),
//             ),
//           ),
//           SizedBox(
//             height: 1.5.h,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.5.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SmoothPageIndicator(
//                   controller: controller,
//                   count: 3,
//                   effect: WormEffect(
//                       spacing: 1.h,
//                       dotHeight: 1.3.h,
//                       dotWidth: 1.3.h,
//                       dotColor: Color(0xffe4e4e4),
//                       activeDotColor: Color(0xff021B8D)),
//                   onDotClicked: (index) => controller.animateToPage(index,
//                       duration: Duration(microseconds: 500),
//                       curve: Curves.easeIn),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.nextPage(
//                         duration: Duration(microseconds: 500),
//                         curve: Curves.easeInOut);
//                   },
//                   child: Container(
//                     child: SvgPicture.asset('assets/Images/next.svg'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   SecondOnboarding() {
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             height: 30.h,
//             child: SvgPicture.asset('assets/Images/ob2.svg'),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 9.0.h, bottom: 2.5.h, left: 3.h),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CommonText(
//                   label: 'Lorem ipsum',
//                   textStyle: TextStyle(
//                       fontFamily: 'Nunito Sans',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 19.sp,
//                       color: Color(0xff021B8D)),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3.h),
//             child: Text(
//               'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed',
//               textAlign: TextAlign.center,
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   fontFamily: 'Nunito Sans',
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14.sp,
//                   color: Colors.black),
//             ),
//           ),
//           SizedBox(
//             height: 1.5.h,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.5.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SmoothPageIndicator(
//                   controller: controller,
//                   count: 3,
//                   effect: WormEffect(
//                       spacing: 1.h,
//                       dotHeight: 1.3.h,
//                       dotWidth: 1.3.h,
//                       dotColor: Color(0xffe4e4e4),
//                       activeDotColor: Color(0xff021B8D)),
//                   onDotClicked: (index) => controller.animateToPage(index,
//                       duration: Duration(microseconds: 500),
//                       curve: Curves.easeIn),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.nextPage(
//                         duration: Duration(microseconds: 500),
//                         curve: Curves.easeInOut);
//                   },
//                   child: Container(
//                     child: SvgPicture.asset('assets/Images/next.svg'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   ThirdOnboarding() {
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             height: 30.h,
//             child: SvgPicture.asset('assets/Images/ob3.svg'),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 9.0.h, bottom: 2.5.h, left: 3.h),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CommonText(
//                   label: 'Lorem ipsum',
//                   textStyle: TextStyle(
//                       fontFamily: 'Nunito Sans',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 19.sp,
//                       color: Color(0xff021B8D)),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3.h),
//             child: Text(
//               'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed',
//               textAlign: TextAlign.center,
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   fontFamily: 'Nunito Sans',
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14.sp,
//                   color: Colors.black),
//             ),
//           ),
//           SizedBox(
//             height: 1.5.h,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.5.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SmoothPageIndicator(
//                   controller: controller,
//                   count: 3,
//                   effect: WormEffect(
//                       spacing: 1.h,
//                       dotHeight: 1.3.h,
//                       dotWidth: 1.3.h,
//                       dotColor: Color(0xffe4e4e4),
//                       activeDotColor: Color(0xff021B8D)),
//                   onDotClicked: (index) => controller.animateToPage(index,
//                       duration: Duration(microseconds: 500),
//                       curve: Curves.easeIn),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.offAll(LoginScreen());
//                   },
//                   child: Container(
//                     width: 9.h,
//                     padding: EdgeInsets.only(top: 1.3.h, bottom: 1.3.h),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(6),
//                         color: Color(0xff4BC4F9)),
//                     child: Center(
//                       child: CommonText(
//                         label: 'Login',
//                         textStyle: labelTextStyleWhiteReguler16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
