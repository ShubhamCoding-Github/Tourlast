import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';

class HotelBookingReview extends StatefulWidget {
  const HotelBookingReview({super.key});

  @override
  State<HotelBookingReview> createState() => _HotelBookingReviewState();
}

class _HotelBookingReviewState extends State<HotelBookingReview> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
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
                            text: 'Review & Checkout',
                            textColor: Colors.white,
                            fontSize: 18),
                        CircleAvatar(
                          child:
                          Image.asset('assets/images/Mask Group 14@3x.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20.sp,right: 20.sp,top:50.sp),
                  child: Container(
                    decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0.5.sp,
                              blurRadius: 5.sp)
                        ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20))
                     ),
                    child: Padding(
                      padding: EdgeInsets.all(20.sp),
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Mask Group 23@3x.png',height: 30.sp,),
                              buildSizeWidth(2),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      addTextPoppinsMedium(text: 'The karma villa', textColor: Colors.black, fontSize:16.0),
                                      buildSizeWidth(2),
                                      addTextPoppinsLight(text: '(Delux Room)', textColor:const Color(0xff8F8F8F), fontSize:12.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/location@3x.png',
                                        height: 15.sp,
                                      ),
                                      buildSizeWidth(2),
                                      addTextPoppinsLight(
                                          text: 'Kuta, Badung, Bali',
                                          textColor: const Color(0xff0B5394),
                                          fontSize: 13.0)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Color(0xffEFF0F1),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              addTextPoppinsRegular(text: '25 Dec, 2023', textColor: Colors.black, fontSize:15.0),
                              addTextPoppinsRegular(text: '1 Jan, 2024', textColor: Colors.black, fontSize:15.0),
                            ],
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffF6F6F6),
                                  border: Border.all(color: const Color(0xffD1D1D1)),
                                  borderRadius: BorderRadius.circular(18)),
                              child: InkWell(
                                onTap: () {
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right:20,top: 5,bottom: 5),
                                  child: addTextPoppinsLight(
                                      text: '8 days trip',
                                      textColor: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              addTextPoppinsLight(text: 'Monday', textColor:const Color(0xff8F8F8F), fontSize:12.0),
                              addTextPoppinsLight(text: 'Monday', textColor:const Color(0xff8F8F8F), fontSize:12.0)
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(20.sp),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        decoration:  BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.5.sp,
                                  blurRadius: 5.sp)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.sp),
                          child: Column(
                            crossAxisAlignment:  CrossAxisAlignment.start,
                            children: [
                             addTextPoppinsRegular(text: 'Passenger Details', textColor: Colors.black, fontSize:16.0),
                              buildSizeHeight(1),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 35.w,
                                    child: CustomTextField(
                                      hintText: 'Email',
                                    ),
                                  ),
                                  buildSizeWidth(5),
                                  SizedBox(
                                    width: 35.w,
                                    child: CustomTextField(
                                      hintText: 'Last Name',
                                    ),
                                  ),
                                ],
                              ),
                              buildSizeHeight(2),
                              CustomTextField(
                                hintText: 'Country',
                              ),
                              buildSizeHeight(2),
                              CustomTextField(
                                hintText: 'Phone Number',
                              ),
                              buildSizeHeight(2),
                              CustomTextField(
                                hintText: 'Email',
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                  buildSizeHeight(2),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.5.sp,
                                blurRadius: 5.sp)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            addTextPoppinsMedium(text: 'Summary', textColor: Colors.black, fontSize:16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsLight(text: 'Stripe', textColor: Colors.black, fontSize:13.0),
                                Radio(
                                    visualDensity: const VisualDensity(vertical: -4),
                                    activeColor: const Color(0xff0B5394),
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: Color(0xffEFF0F1),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsLight(text: 'Mobile Money', textColor: Colors.black, fontSize:13.0),
                                Radio(
                                    visualDensity: const VisualDensity(vertical: -4),
                                    activeColor: const Color(0xff0B5394),
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: Color(0xffEFF0F1),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsLight(text: 'Debit/Credit Card', textColor: Colors.black, fontSize:13.0),
                                Radio(
                                    visualDensity: const VisualDensity(vertical: -4),
                                    activeColor: const Color(0xff0B5394),
                                    value: 3,
                                    groupValue:_value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ],
                            ),
                            buildSizeHeight(1),
                            Container(
                                decoration:  const BoxDecoration(
                                    color: Color(0xffEFF0F1),
                                    borderRadius: BorderRadiusDirectional.all(Radius.circular(12))
                                ),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 15.sp,horizontal: 20.sp),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        addTextPoppinsLight(text: 'Apply Discount Code', textColor:const Color(0xff8F8F8F), fontSize:13.0),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xff0B5394),
                                              borderRadius: BorderRadius.circular(16)),
                                          child: InkWell(
                                            onTap: () {
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 20,right:20,top: 5,bottom: 5),
                                              child: addTextPoppinsRegular(
                                                  text: 'Apply',
                                                  textColor: Colors.white,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            ),
                            buildSizeHeight(2),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xff1FD22B)),
                                  borderRadius: BorderRadius.circular(8)),
                              child: InkWell(
                                onTap: () {
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.sp,horizontal: 20.sp),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/SUCCESS@3x.png',height: 18.sp,),
                                      buildSizeWidth(2),
                                      addTextPoppinsBold(text: 'TOUR123', textColor: Colors.black, fontSize:13.0),
                                      buildSizeWidth(1),
                                      addTextPoppinsLight(text: 'applied', textColor: Colors.black, fontSize:13.0),
                                      const Spacer(),
                                      addTextPoppinsRegular(text: 'Remove', textColor:const Color(0xff0B5394), fontSize: 13.0)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  buildSizeHeight(2),
                  Container(
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0.5.sp,
                              blurRadius: 5.sp)
                        ],
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 20,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addTextPoppinsMedium(
                                text: 'Summary',
                                textColor: const Color(0xff070707),
                                fontSize: 16),
                            buildSizeHeight(2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    addTextPoppinsLight(text: 'Adult x 2', textColor: Colors.black, fontSize:14),
                                    addTextPoppinsLight(text: '\$ 900', textColor: Colors.black, fontSize:14),
                                  ],
                                ),
                                buildSizeHeight(1),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    addTextPoppinsLight(text: 'Child x 1', textColor: Colors.black, fontSize:14),
                                    addTextPoppinsLight(text: '\$ 450', textColor: Colors.black, fontSize:14),
                                  ],
                                ),
                                buildSizeHeight(1),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    addTextPoppinsLight(text: 'Service Fee', textColor: Colors.black, fontSize:14),
                                    addTextPoppinsLight(text: '\$ 156', textColor: Colors.black, fontSize:14),
                                  ],
                                ),
                                buildSizeHeight(1),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    addTextPoppinsLight(text: 'Discount', textColor: Colors.black, fontSize:14),
                                    addTextPoppinsLight(text: '- \$ 6', textColor: Colors.black, fontSize:14),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Container(
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0.5.sp,
                              blurRadius: 5.sp)
                        ],
                        color: Color(0xffA0D3FE),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextPoppinsRegular(
                                text: 'Total',
                                textColor:Colors.black,
                                fontSize: 14),
                            addTextPoppinsRegular(
                                text: '\$ 1500',
                                textColor: Colors.black,
                                fontSize: 14),
                          ],
                        ),
                      )),
                  buildSizeHeight(2),
                  addTextPoppinsBold(text: 'Note:', textColor:Colors.black, fontSize:13.0),
                  buildSizeHeight(1),
                  addTextPoppinsLight(text: '- If you are cancel booking 30% penalty will be deducted.', textColor:Colors.black, fontSize:13.0),
                  buildSizeHeight(2),
                  CustomButton(
                    child: addTextPoppinsLight(
                        text: 'Book Now',
                        textColor: const Color(0xffFFFFFF),
                        fontSize: 16.0),
                    onPressed: () {
                      // Get.to(const ApartmentCompletScreen());
                     _buildExpandableDialog();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
     ),
    );
  }
  _buildExpandableDialog() {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Dialog(
          insetPadding: EdgeInsets.only(left: 20.sp,right: 20.sp),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.clear,
                      size: 30,
                    ),
                  ),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              Padding(
                padding:  EdgeInsets.all(20.sp),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/check-mark@3x.png',height: 40.sp,
                      ),
                    ),
                    buildSizeHeight(5),
                    addTextPoppinsRegular(text: 'Payment Successful!', textColor: Colors.black, fontSize: 22.0),
                    buildSizeHeight(1),
                    addTextPoppinsLight(text: 'Transaction Number: 6854287457', textColor:const Color(0xff8F8F8F), fontSize: 13.0),
                    buildSizeHeight(1),
                    const Divider(
                      thickness: 1,
                      color: Color(0xffE2E2E2),
                    ),
                    buildSizeHeight(1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        addTextPoppinsLight(text: 'Amount Paid', textColor: Colors.black, fontSize:14.0),
                        addTextPoppinsLight(text: '\$69', textColor: const Color(0xff0B5394), fontSize:14.0),

                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}
