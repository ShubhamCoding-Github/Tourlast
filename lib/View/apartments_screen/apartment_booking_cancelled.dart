import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/utils.dart';

class ApartmentCancelledBooking extends StatelessWidget {
  const ApartmentCancelledBooking ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: Color(0xff0B5394),
                  image: DecorationImage(
                    image: AssetImage("assets/images/Mask Group 43@3x.png"),
                  )),
              height: 70.sp,
              child: Padding(
                padding: const EdgeInsets.all(20.0).copyWith(bottom: 50.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/images/Group 338@3x.png',
                        height: 25.sp,
                      ),
                    ),
                    addTextPoppinsRegular(
                        text: 'Booking Details',
                        textColor: Colors.white,
                        fontSize: 18),
                    CircleAvatar(
                      child: Image.asset('assets/images/Mask Group 14@3x.png'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 45.sp,
              child:Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 85.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(20),topStart: Radius.circular(20)),
                        ),
                        child:Padding(
                          padding:  EdgeInsets.only(top: 20.sp,left: 20,right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/Mask Group 23@3x.png',height: 25.sp,),
                                  buildSizeWidth(3),
                                  Column(
                                    children: [
                                      addTextPoppinsMedium(text: 'The karma villa', textColor:Colors.black, fontSize:15.0),
                                      addTextPoppinsLight(text: 'Kuta, Badung, Bali', textColor:const Color(0xff979595), fontSize:12.0),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Color(0xff9E9E9E),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  addTextPoppinsLight(text: 'Check in', textColor:const Color(0xff979595), fontSize:12.0),
                                  addTextPoppinsLight(text: 'Check out', textColor:const Color(0xff979595), fontSize:12.0),
                                ],
                              ),
                              buildSizeHeight(1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  addTextPoppinsRegular(text: 'Sun 9, Oct 2023', textColor:Colors.black, fontSize:14.0),
                                  addTextPoppinsRegular(text: 'Fri 7, Oct 2023', textColor:Colors.black, fontSize:14.0),
                                ],
                              ),
                              const Divider(
                                color: Color(0xff9E9E9E),
                              ),
                              buildSizeHeight(1),
                              Row(
                                children: [
                                  Image.asset('assets/images/cutlery@3x.png',height: 15.sp),
                                  buildSizeWidth(2),
                                  addTextPoppinsLight(text: 'Breakfast Included', textColor:const Color(0xff979595), fontSize:13.0),
                                  const Spacer(),
                                  Image.asset('assets/images/cutlery@3x.png',height: 15.sp),
                                  buildSizeWidth(2),
                                  addTextPoppinsLight(text: 'Twin Bed', textColor:const Color(0xff979595), fontSize:13.0),
                                ],
                              ),
                              buildSizeHeight(1),
                              Row(
                                children: [
                                  Image.asset('assets/images/cutlery@3x.png',height: 15.sp),
                                  buildSizeWidth(2),
                                  addTextPoppinsLight(text: 'Twin Bed', textColor:const Color(0xff979595), fontSize:13.0),
                                  const Spacer(),
                                  Image.asset('assets/images/cutlery@3x.png',height: 15.sp),
                                  buildSizeWidth(2),
                                  addTextPoppinsLight(text: '2 Room', textColor:const Color(0xff979595), fontSize:13.0),
                                ],
                              ),
                              const Divider(
                                color: Color(0xff9E9E9E),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset('assets/images/Mask Group 14@3x.png'),
                                  ),
                                  buildSizeWidth(2),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      addTextPoppinsLight(text: 'Guest Name', textColor:const Color(0xff979595), fontSize:13.0),
                                      addTextPoppinsMedium(text: 'Mikudo Alfarizie', textColor:Colors.black, fontSize:16.0),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ) ,
                      ),
                      Positioned(
                        top: -10,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffFFD2D2),
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: addTextPoppinsRegular(
                                  text: 'Cancelled',
                                  textColor: const Color(0xffFF0000),
                                  fontSize: 12),
                            )),),
                    ],
                  ),
                  Image.asset('assets/images/Mask Group 46@3x.png',height:20.sp,),
                  Container(
                    width: 85.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(20),bottomEnd: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              addTextPoppinsLight(text: 'Guest Name', textColor:const Color(0xff979595), fontSize:13.0),
                              addTextPoppinsMedium(text: '77856982457', textColor:Colors.black, fontSize:16.0),
                            ],
                          ),
                          Padding(
                            padding:  EdgeInsets.all(20.sp),
                            child: BarcodeWidget(
                                height: 10.h,
                                data: '37b12tsar64nptm12',
                                barcode: Barcode.code128()),
                          ),
                          addTextPoppinsLight(text: 'Please bring your id card when checking in', textColor:const Color(0xff979595), fontSize:13.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),),
          ]),
    );
  }
}
