import 'package:Tourlast/View/flight_screens/ticket_screen.dart';
import 'package:Tourlast/View/home_screen/my_bookings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/utils.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(alignment: Alignment.topCenter, clipBehavior: Clip.none, children: [
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
                     Get.to(const MyBooking());
                  },
                  child: Image.asset(
                    'assets/images/Group 338@3x.png',
                    height: 25.sp,
                  ),
                ),
                addTextPoppinsRegular(
                    text: 'Flights',
                    textColor: Colors.white,
                    fontSize: 18),
                CircleAvatar(
                  child: Image.asset('assets/images/Mask Group 14@3x.png'),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:20.sp,right: 20.sp,top: 50.sp),
          child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.5.sp,
                      blurRadius: 5.sp)
                ],
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(12),
              ),
              child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildSizeHeight(10),
                        Image.asset(
                          'assets/images/tick@3x.png',
                          height: 30.sp,
                        ),
                        buildSizeHeight(5),
                        addTextPoppinsMedium(
                            text: 'Payment Successful',
                            textColor: const Color(0xff0B5394),
                            fontSize: 20.0),
                        buildSizeHeight(2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextPoppinsLight(
                                text: 'Invoice',
                                textColor: const Color(0xff6B6B6B),
                                fontSize: 13),
                            addTextPoppinsLight(
                                text: 'INV1245789835',
                                textColor: Colors.black,
                                fontSize: 14),
                          ],
                        ),
                        buildSizeHeight(2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextPoppinsLight(
                                text: 'Transaction Date',
                                textColor: const Color(0xff6B6B6B),
                                fontSize: 13),
                            addTextPoppinsLight(
                                text: 'Wed, 18 Aug 2023',
                                textColor: Colors.black,
                                fontSize: 14),
                          ],
                        ),
                        buildSizeHeight(2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextPoppinsLight(
                                text: 'Payment Method',
                                textColor: const Color(0xff6B6B6B),
                                fontSize: 13),
                            addTextPoppinsLight(
                                text: 'Stripe',
                                textColor: Colors.black,
                                fontSize: 14),
                          ],
                        ),
                        buildSizeHeight(2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextPoppinsLight(
                                text: 'Price Details',
                                textColor: const Color(0xff6B6B6B),
                                fontSize: 13),
                            addTextPoppinsLight(
                                text: '\$ 1506',
                                textColor: Colors.black,
                                fontSize: 14),
                          ],
                        )
                      ]))),
        )
      ]),
      const Spacer(),
      Padding(
        padding: EdgeInsets.all(20.sp),
        child: CustomButton(
          child: addTextPoppinsLight(
              text: 'View Ticket',
              textColor: const Color(0xffFFFFFF),
              fontSize: 16.0),
          onPressed: () {
        Get.to(const TicketScreen());
          },
        ),
      ),
    ]));
  }

}
