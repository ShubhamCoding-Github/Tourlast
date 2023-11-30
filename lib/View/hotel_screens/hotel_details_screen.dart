import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/utils.dart';
import 'hotel_booking_review.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Mask Group 26@3x.png"),
                              fit: BoxFit.cover)),
                      height: 85.sp,
                      child: Padding(
                        padding:
                        EdgeInsets.only(top: 30.sp, left: 20.sp, right: 20.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: addTextPoppinsRegular(
                                      text: 'Hotel Details',
                                      textColor: Colors.white,
                                      fontSize: 18),
                                ),
                                CircleAvatar(
                                  child: Image.asset(
                                      'assets/images/Mask Group 14@3x.png'),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BlurryContainer(
                                    blur: 5,
                                    height: 20.w,
                                    elevation: 0,
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.all(8),
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                    child: Image.asset(
                                      'assets/images/Mask Group 27@3x.png',
                                      height: 30.sp,
                                    ),
                                  ),
                                  BlurryContainer(
                                    blur: 5,
                                    height: 20.w,
                                    elevation: 0,
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.all(8),
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                    child: Image.asset(
                                      'assets/images/Mask Group 27@3x.png',
                                      height: 30.sp,
                                    ),
                                  ),
                                  BlurryContainer(
                                    blur: 5,
                                    height: 20.w,
                                    elevation: 0,
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.all(8),
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                    child: Image.asset(
                                      'assets/images/Mask Group 27@3x.png',
                                      height: 30.sp,
                                    ),
                                  ),
                                  BlurryContainer(
                                    blur: 5,
                                    height: 20.w,
                                    elevation: 0,
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.all(8),
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                    child: Image.asset(
                                      'assets/images/Mask Group 27@3x.png',
                                      height: 30.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addTextPoppinsRegular(
                        text: 'The karma villa',
                        textColor: Colors.black,
                        fontSize: 22.0),
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
                    buildSizeHeight(1),
                    Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 18,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        buildSizeWidth(2),
                        addTextPoppinsMedium(
                            text: '4.5', textColor: Colors.black, fontSize: 14.0),
                        buildSizeWidth(2),
                        addTextPoppinsLight(
                            text: '124 Reviews',
                            textColor: const Color(0xff0B5394),
                            fontSize: 13.0)
                      ],
                    ),
                    buildSizeHeight(2),
                    Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/g195@3x.png',
                                    height: 15.0,
                                  ),
                                  buildSizeWidth(2),
                                  addTextPoppinsLight(
                                      text: 'Travel Date',
                                      textColor: const Color(0xff8F8F8F),
                                      fontSize: 13.0),
                                  buildSizeWidth(20),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/team@3x.png',
                                        height: 15.0,
                                      ),
                                      buildSizeWidth(2),
                                      addTextPoppinsLight(
                                          text: 'Number of Person',
                                          textColor: const Color(0xff8F8F8F),
                                          fontSize: 13.0)
                                    ],
                                  ),
                                ],
                              ),
                              buildSizeHeight(1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  addTextPoppinsMedium(
                                      text: '5 Oct - 10 Oct',
                                      textColor: Colors.black,
                                      fontSize: 17.0),
                                  addTextPoppinsMedium(
                                      text: '1 Room, 3 Person',
                                      textColor: Colors.black,
                                      fontSize: 17.0),
                                ],
                              )
                            ],
                          ),
                        )),
                    buildSizeHeight(2),
                    addTextPoppinsMedium(
                        text: 'Description',
                        textColor: const Color(0xff0B5394),
                        fontSize: 16.0),
                    addTextPoppinsLight(
                        height: 2,
                        text:
                        'The karma villa in a hotel a modern concept located in the Badung area, It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                        textColor: const Color(0xff919191),
                        fontSize: 13.0),
                    buildSizeHeight(2),
                    addTextPoppinsMedium(
                        text: 'Rules & Policy',
                        textColor: const Color(0xff0B5394),
                        fontSize: 16.0),
                    addTextPoppinsLight(
                        height: 2,
                        text:'The karma villa in a hotel a modern concept located in the Badung area, It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                        textColor: const Color(0xff919191),
                        fontSize: 13.0),
                    buildSizeHeight(2),
                    addTextPoppinsMedium(
                        text: 'Amenities',
                        textColor: const Color(0xff0B5394),
                        fontSize: 16.0),
                    buildSizeHeight(1),
                    SizedBox(
                      height: 35.sp,
                      child: ListView.builder(
                        itemCount: 20,
                        shrinkWrap: true, scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return  Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 15.h,
                              width: 20.w,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/parking-area@3x.png',
                                      height: 20.sp,
                                    ),
                                    buildSizeHeight(1),
                                    addTextPoppinsLight(text: 'Parking', textColor:Color(0xff4B4B4B), fontSize:12)
                                  ],
                                ),
                              ));
                        },),
                    ),
                    buildSizeHeight(2),
                    addTextPoppinsMedium(
                        text: 'Room Type',
                        textColor: const Color(0xff0B5394),
                        fontSize: 16.0),
                    buildSizeHeight(1),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Mask Group 16@3x.png'),
                            buildSizeHeight(1),
                            addTextPoppinsRegular(text: 'Delux Room', textColor:Colors.black, fontSize:15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addTextPoppinsBold(text: '\$69', textColor:Colors.black, fontSize:18.0),
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0B5394),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: InkWell(
                                    onTap: () {
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20,right:20,top: 5,bottom: 5),
                                      child: addTextPoppinsMedium(
                                          text: 'Select',
                                          textColor: Colors.white,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    buildSizeHeight(2),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Mask Group 16@3x.png'),
                            buildSizeHeight(1),
                            Row(
                              children: [
                                addTextPoppinsRegular(text: ' Super Delux Room', textColor:Colors.black, fontSize:15.0),
                                addTextPoppinsLight(text: '(Breakfast included)', textColor:const Color(0xff707070), fontSize:12.0)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addTextPoppinsBold(text: '\$69', textColor:Colors.black, fontSize:18.0),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: const Color(0xff0B5394)),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: InkWell(
                                    onTap: () {
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20,right:20,top: 5,bottom: 5),
                                      child: addTextPoppinsMedium(
                                          text: 'Select',
                                          textColor: const Color(0xff0B5394),
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    buildSizeHeight(2),
                    Row(
                      children: [
                        Column(
                          children: [
                            addTextPoppinsBold(text: '\$69', textColor:Colors.black, fontSize:22.0),
                            addTextPoppinsLight(text: '/ per night', textColor:const Color(0xff919191), fontSize:12.0),
                          ],
                        ),
                        Spacer(),
                        CustomButton(
                          btnWidth: 60.sp,
                          child: addTextPoppinsLight(
                              text: 'Book Now',
                              textColor: const Color(0xffFFFFFF),
                              fontSize: 16.0),
                          onPressed: () {
                            Get.to(const HotelBookingReview());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              buildSizeHeight(5),
            ],
          ),
        ));
  }
}
