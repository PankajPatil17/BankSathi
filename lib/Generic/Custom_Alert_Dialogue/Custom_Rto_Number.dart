// ignore_for_file: unused_local_variable

import 'package:bank_sathi/Controller/CarInsurance_Controller.dart';
import 'package:bank_sathi/Generic/Common/CommonTextNunito.dart';
import 'package:bank_sathi/Generic/Constant/colors.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';
import 'package:bank_sathi/Screens/Personal_Insurance/Car_Insurance/Car_Vehicle_Manufacturer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SelectRtoNumber extends StatefulWidget {
  final city;

  const SelectRtoNumber({super.key, required this.city});

  @override
  State<SelectRtoNumber> createState() => _SelectRtoNumberState();
}

class _SelectRtoNumberState extends State<SelectRtoNumber> {
  var carinsurancecontroller = Get.put(CarInsuranceController());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "RTO in ${widget.city}",
          style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
      content: Container(
        width: 100.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Color(0xff4BC4F9),
              height: 0,
            ),
            SizedBox(
              height: 1.h,
            ),
            GridView.builder(
              shrinkWrap: true,
              controller: ScrollController(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 25.0,
                childAspectRatio: 1.2,
              ),
              itemCount: carinsurancecontroller.CarPassing.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      carinsurancecontroller.CarPassingIndex =
                          carinsurancecontroller.CarPassing.indexOf(
                              carinsurancecontroller.CarPassing[index]);

                      Get.to(CarVehicleManufacturer(),
                          transition: transitoineffect);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: commonboxshadowBlue,
                        border: Border.all(
                            color: carinsurancecontroller.CarPassingIndex ==
                                    carinsurancecontroller.CarPassing.indexOf(
                                        carinsurancecontroller
                                            .CarPassing[index])
                                ? Color(0xffA882DD)
                                : Colors.transparent,
                            width: 1.5),
                        shape: BoxShape.circle),
                    child: CommonTextNunito(
                      label:
                          carinsurancecontroller.CarPassing[index].toString(),
                      fontw8: FontWeight.w500,
                      size: 11.sp,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
