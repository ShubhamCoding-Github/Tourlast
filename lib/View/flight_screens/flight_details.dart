import 'package:Tourlast/Utility/utils.dart';
import 'package:Tourlast/View/flight_screens/payment_successful_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';

class FlightDetails extends StatefulWidget {
  const FlightDetails({super.key});

  @override
  State<FlightDetails> createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FA),
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
                  padding: EdgeInsets.only(left: 20.sp,right: 20.sp,top: 50.sp),
                  child: Container(
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/Mask Group 32@3x.png',height: 20.sp,),
                                buildSizeWidth(2),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        addTextPoppinsMedium(text: 'South African Airways', textColor: Colors.black, fontSize:16.0),
                                        buildSizeWidth(2),
                                        addTextPoppinsLight(text: '(Delux Room)', textColor:const Color(0xff8F8F8F), fontSize:12.0)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            buildSizeHeight(1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsMedium(text: '(LHR)', textColor: Colors.black, fontSize: 13.0),
                                const Divider(
                                  thickness: 1,
                                  color: Color(0xff8F8F8F),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: const Color(0xffD1D1D1)),
                                      borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: addTextPoppinsRegular(text: '04h 30m', textColor: Colors.black, fontSize: 13.0),
                                ),
                                ),
                                const Divider(
                                  height: 10,
                                  thickness: 1,
                                  color: Color(0xff8F8F8F),
                                ),
                                addTextPoppinsMedium(text: '(BHD)', textColor: Colors.black, fontSize: 13.0),
                              ],
                            ),
                            buildSizeHeight(1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsRegular(text: '04:25 PM', textColor: Colors.black, fontSize:17.0),
                                addTextPoppinsRegular(text: '04:25 PM', textColor: Colors.black, fontSize:17.0),
                              ],
                            ),
                            buildSizeHeight(1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsLight(text: 'Friday, Nov 22', textColor: const Color(0xff8F8F8F), fontSize:13.0),
                                addTextPoppinsLight(text: 'Friday, Nov 23', textColor:const Color(0xff8F8F8F), fontSize:13.0),
                              ],
                            ),
                            buildSizeHeight(1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                addTextPoppinsRegular(text: 'London (LHR)', textColor:Colors.black, fontSize:14.0),
                                addTextPoppinsRegular(text: 'Belfast (BHD)', textColor:Colors.black, fontSize:14.0)
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
              padding: EdgeInsets.symmetric(horizontal:20.sp,vertical: 20.sp),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      addTextPoppinsLight(text: 'Cabin Class', textColor: Colors.black, fontSize: 13.0),
                      const Spacer(),
                      Image.asset('assets/images/briefcase@3x.png',height: 15.sp,),
                      buildSizeWidth(1),
                      addTextPoppinsMedium(text: 'Business', textColor: Color(0xff0B5394), fontSize: 13.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:20.sp,vertical: 5.sp),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addTextPoppinsMedium(text: 'Facilities', textColor: Colors.black, fontSize: 16.0),
                      buildSizeHeight(2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/wifi@3x.png',height: 22.sp),
                          Image.asset('assets/images/Layer_x0020_1@3x.png',height: 22.sp),
                          Image.asset('assets/images/youtube@3x.png',height: 22.sp),
                          Image.asset('assets/images/hot-food@3x.png',height: 22.sp),
                          Image.asset('assets/images/do not@3x.png',height: 22.sp),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:20.sp,vertical: 15.sp),
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
                                    groupValue:_value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value =value!;
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
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ],
                            ),
                            buildSizeHeight(1),
                            Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 0.5.sp,
                                          blurRadius: 5.sp)
                                    ],
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
                                      Spacer(),
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
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
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
                      decoration: BoxDecoration(
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
                  buildSizeHeight(1),
                  addTextPoppinsLight(text: '- Passenger name should match the passport', textColor:Colors.black, fontSize:13.0),
                  buildSizeHeight(2),
                  CustomButton(
                    child: addTextPoppinsLight(
                        text: 'Book Now',
                        textColor: const Color(0xffFFFFFF),
                        fontSize: 16.0),
                    onPressed: () {
                      Get.to(const PaymentSuccessfulScreen());
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
}
