import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../Utility/utils.dart';

class CancelledBookingScreen extends StatefulWidget {
  const CancelledBookingScreen({super.key});

  @override
  State<CancelledBookingScreen> createState() => _CancelledBookingScreenState();
}

class _CancelledBookingScreenState extends State<CancelledBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Container(
         decoration: const BoxDecoration(
           image: DecorationImage(
             image: AssetImage("assets/images/Mask Group 35@3x.png"),
             fit: BoxFit.cover,
           ),
         ),
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: [
               buildSizeHeight(5),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   InkWell(
                     onTap: () {
                       Get.back();
                     },
                     child: Image.asset(
                       'assets/images/backbutton@3x.png',
                       height: 25.sp,
                     ),
                   ),
                   addTextPoppinsRegular(
                       text: 'Ticket', textColor: Colors.black, fontSize: 18),
                   CircleAvatar(
                     child: Image.asset('assets/images/Mask Group 14@3x.png'),
                   ),
                 ],
               ),
               buildSizeHeight(3),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   addTextPoppinsSemiBold(
                       text: '(LHR)', textColor: Colors.black, fontSize: 20),
                   addTextPoppinsSemiBold(
                       text: '(LHR)', textColor: Colors.black, fontSize: 20),
                 ],
               ),
               Image.asset('assets/images/Group 372@3x.png'),
               buildSizeHeight(1),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   addTextPoppinsMedium(
                       text: 'London (LHR)',
                       textColor: Colors.black,
                       fontSize: 14),
                   addTextPoppinsMedium(
                       text: 'Belfast (BHD)',
                       textColor: Colors.black,
                       fontSize: 14),
                 ],
               ),
               buildSizeHeight(1),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   addTextPoppinsMedium(
                       text: 'Fri, Nov 23, 11:40',
                       textColor: const Color(0xff474747),
                       fontSize: 14),
                   addTextPoppinsMedium(
                       text: 'Fri, Nov 23, 14:00',
                       textColor: const Color(0xff474747),
                       fontSize: 14),
                 ],
               ),
               buildSizeHeight(3),
               Stack(
                 clipBehavior: Clip.none,
                 alignment: Alignment.center,
                 children: [

                   Container(
                     decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20))),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [

                         Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   border:
                                   Border.all(color: const Color(0xffC6CACD)),
                                   borderRadius:
                                   BorderRadiusDirectional.circular(8),
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Image.asset(
                                       'assets/images/Mask Group 32@3x.png',
                                       height: 24.sp),
                                 ),
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   addTextPoppinsMedium(
                                       text: 'South African Airways',
                                       textColor: Colors.black,
                                       fontSize: 15),
                                   buildSizeHeight(0.50),
                                   addTextPoppinsLight(
                                       text: '(SAF-231)',
                                       textColor: Colors.black,
                                       fontSize: 12),
                                 ],
                               ),
                               Container(
                                 decoration: BoxDecoration(
                                   color: const Color(0xffA0D3FE),
                                   borderRadius: BorderRadiusDirectional.circular(40),
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: addTextPoppinsRegular(
                                       text: 'Business',
                                       textColor: const Color(0xff0B5394),
                                       fontSize: 15),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         buildSizeHeight(1),
                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: Container(
                             decoration: BoxDecoration(
                               color: const Color(0xffEDF2F6),
                               borderRadius: BorderRadiusDirectional.circular(10),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   addTextPoppinsLight(
                                       text: 'Take off on',
                                       textColor: const Color(0xff6D6D6D),
                                       fontSize: 14),
                                   buildSizeWidth(1),
                                   addTextPoppinsLight(
                                       text: 'Fri, Nov 2023, 11:40',
                                       textColor: Colors.black,
                                       fontSize: 16),
                                 ],
                               ),
                             ),
                           ),
                         ),
                         buildSizeHeight(3),
                         addTextPoppinsLight(
                             text: 'Passenger Name',
                             textColor: const Color(0xff9E9E9E),
                             fontSize: 13),
                         buildSizeHeight(1),
                         addTextPoppinsMedium(
                             text: 'Mikudo Alfarizie Salman',
                             textColor: Colors.black,
                             fontSize: 16),
                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               addTextPoppinsLight(
                                   text: 'Boarding',
                                   textColor: const Color(0xff9F9F9F),
                                   fontSize: 12),
                               addTextPoppinsLight(
                                   text: 'Gate',
                                   textColor: const Color(0xff9F9F9F),
                                   fontSize: 12),
                               addTextPoppinsLight(
                                   text: 'Seat',
                                   textColor: const Color(0xff9F9F9F),
                                   fontSize: 12),
                               addTextPoppinsLight(
                                   text: 'Baggage',
                                   textColor: const Color(0xff9F9F9F),
                                   fontSize: 12),
                             ],
                           ),
                         ),
                         buildSizeHeight(1),
                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               addTextPoppinsLight(
                                   text: '11:00',
                                   textColor: Colors.black,
                                   fontSize: 16),
                               addTextPoppinsLight(
                                   text: 'C5',
                                   textColor: Colors.black,
                                   fontSize: 16),
                               addTextPoppinsLight(
                                   text: '14B',
                                   textColor: Colors.black,
                                   fontSize: 16),
                               addTextPoppinsLight(
                                   text: '20kg',
                                   textColor: Colors.black,
                                   fontSize: 16),
                             ],
                           ),
                         ),
                       ],
                     ),
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
               Image.asset('assets/images/Mask Group 46@3x.png'),
               Container(
                 decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadiusDirectional.only( bottomEnd: Radius.circular(20),bottomStart: Radius.circular(20))),
                 child: Padding(
                   padding:  EdgeInsets.all(20.sp),
                   child: BarcodeWidget(
                       height: 10.h,
                       data: '37b12tsar64nptm12',
                       barcode: Barcode.code128()),
                 ),
               ),
             ],
           ),
         ),
       ),
    );
  }
}
