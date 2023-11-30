import 'package:Tourlast/View/flight_screens/completebooking_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/utils.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  ListView.builder(
        primary: false,
        shrinkWrap: true,physics: const BouncingScrollPhysics(),
        itemCount: 10,
        padding: EdgeInsets.symmetric(vertical: 10.sp),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 20.sp),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const CompleteBookingScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0.5.sp,
                            blurRadius: 5.sp)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width:70),
                              addTextPoppinsLight(
                                  text: '04h 30m',
                                  textColor: const Color(0xffBEBEBE),
                                  fontSize: 13),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffC8F1B2),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: addTextPoppinsRegular(
                                        text: 'Completed',
                                        textColor: const Color(0xff1E9B00),
                                        fontSize: 12),
                                  )),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  addTextPoppinsRegular(
                                      text: '(LHR)',
                                      textColor: const Color(0xff787878),
                                      fontSize: 13),
                                  buildSizeWidth(1),
                                  Image.asset('assets/images/Group 390@3x.png',height: 18.sp,),
                                  buildSizeWidth(1),
                                  addTextPoppinsRegular(
                                      text: '(BHD)',
                                      textColor: const Color(0xff787878),
                                      fontSize: 13),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  addTextPoppinsMedium(text: '04:25 PM', textColor:const Color(0xff0B5394), fontSize:15),
                                  addTextPoppinsMedium(text: '04:25 PM', textColor:const Color(0xff0B5394), fontSize:15)
                                ],
                              ),
                            ),
                            const Divider(
                              color: Color(0xffEEEEEE),
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/Mask Group 32@3x.png',height: 26.sp,),
                                  addTextPoppinsLight(
                                      text: '(SAF-231)',
                                      textColor: const Color(0xffBEBEBE),
                                      fontSize: 13),
                                  const Spacer(),
                                  Image.asset('assets/images/information-button@3x.png',height: 14.sp,),
                                  buildSizeWidth(1),
                                  addTextPoppinsLight(
                                      text: '(Flight Info)',
                                      textColor: const Color(0xffBEBEBE),
                                      fontSize: 13),
                                  const Spacer(),
                                  addTextPoppinsSemiBold(
                                      text: '(\$450.00)',
                                      textColor: Colors.black,
                                      fontSize: 13),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
