import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/utils.dart';
import 'bookingdetails_screen.dart';

class HotelUpcoming extends StatelessWidget {
  const HotelUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: ListView.builder(
        padding: EdgeInsets.zero,
         shrinkWrap:  true,
            itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to( const BookingDetailsScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0.5.sp,
                              blurRadius: 5.sp)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(20))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.sp, vertical: 15.sp),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Mask Group 27@3x.png',
                                    height: 40.sp,),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    addTextPoppinsRegular(text: 'The karma villa',
                                        textColor: Colors.black,
                                        fontSize: 15.0),
                                    buildSizeHeight(1),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Image.asset(
                                          'assets/images/location@3x.png',
                                          height: 15.sp,
                                          color: const Color(0xff8F8F8F),),
                                        buildSizeWidth(2),
                                        addTextPoppinsLight(
                                            text: 'Kuta, Badung, Bali',
                                            textColor: const Color(0xff8F8F8F),
                                            fontSize: 12.0)
                                      ],
                                    ),
                                    buildSizeHeight(1),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Image.asset(
                                          'assets/images/location@3x.png',
                                          height: 15.sp,
                                          color: const Color(0xff8F8F8F),),
                                        buildSizeWidth(2),
                                        addTextPoppinsLight(
                                            text: 'Jan 10, 2023 - Jan 13 2023',
                                            textColor: const Color(0xff8F8F8F),
                                            fontSize: 12.0)
                                      ],
                                    ),
                                    buildSizeHeight(1),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Image.asset(
                                          'assets/images/location@3x.png',
                                          height: 15.sp,
                                          color: const Color(0xff8F8F8F),),
                                        buildSizeWidth(2),
                                        addTextPoppinsLight(
                                            text: 'ID: TL6578421878',
                                            textColor: const Color(0xff8F8F8F),
                                            fontSize: 12.0)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        LayoutBuilder(builder:
                            (BuildContext context,
                            BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                40,
                                    (index) =>
                                const Text('-',
                                    style: TextStyle(
                                        color:
                                        Color(0xffBEBEBE)))),
                          );
                        }),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  addTextPoppinsMedium(text: '\$276',
                                      textColor: Colors.black,
                                      fontSize: 20.0),
                                  addTextPoppinsLight(text: 'Total Amount',
                                      textColor: const Color(0xff8F8F8F),
                                      fontSize: 12.0),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 4.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                    color: Color(0xff0B5394),
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: InkWell(
                                      onTap: () {
                                        Get.to( const BookingDetailsScreen());
                                      },
                                      child: addTextPoppinsLight(text: 'Details',
                                          textColor: Colors.white,
                                          fontSize: 13.0))),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
      ),
    );
  }
}
