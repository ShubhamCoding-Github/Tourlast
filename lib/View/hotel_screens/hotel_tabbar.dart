import 'package:Tourlast/View/hotel_screens/choosing_hotel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';

class HotelTabBar extends StatefulWidget {
  const HotelTabBar({super.key});

  @override
  State<HotelTabBar> createState() => _HotelTabBarState();
}

class _HotelTabBarState extends State<HotelTabBar> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(30),
                  bottomEnd: Radius.circular(30)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        visualDensity: VisualDensity.compact,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: isChecked1,
                        shape: const CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                            isChecked2=!value;
                          });
                        },
                      ),
                      addTextPoppinsMedium(text:' Round Trip', textColor:Colors.black, fontSize: 14.0),
                      const Spacer(),
                      Checkbox(
                        visualDensity: VisualDensity.compact,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: isChecked2,
                        shape: const CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                            isChecked1=!value;
                          });
                        },
                      ),
                      addTextPoppinsMedium(text:'One Way', textColor:Colors.black, fontSize: 14.0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Container(
                             width:35.w,
                             decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffE2E2E2), width: 1),
                              borderRadius: BorderRadiusDirectional.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/g195@3x.png',
                                        height: 15.sp,
                                      ),
                                      buildSizeWidth(2),
                                      addTextPoppinsLight(
                                          text: 'From',
                                          textColor: const Color(0xff8F8F8F),
                                          fontSize: 13),
                                    ],
                                  ),
                                  buildSizeHeight(1),
                                  SizedBox(
                                    height: 2.h,
                                    width: 35.w,
                                    child: CustomTextField(
                                      fillColor: Colors.white,
                                      borderColor: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: -28,
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffE2E2E2), width: 1),
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/date (1)@3x.png',
                                    height: 18.sp,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      buildSizeWidth(5),
                      Container(
                        width:35.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffE2E2E2), width: 1),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/g195@3x.png',
                                    height: 15.sp,
                                  ),
                                  buildSizeWidth(2),
                                  addTextPoppinsLight(
                                      text: 'To',
                                      textColor: const Color(0xff8F8F8F),
                                      fontSize: 13),
                                ],
                              ),
                              buildSizeHeight(1),
                              SizedBox(
                                height: 2.h,
                                width: 35.w,
                                child: CustomTextField(
                                  fillColor: Colors.white,
                                  borderColor: Colors.white30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  buildSizeHeight(2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:35.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffE2E2E2), width: 1),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              addTextPoppinsLight(
                                  text: 'Room',
                                  textColor: const Color(0xff8F8F8F),
                                  fontSize: 12),
                              buildSizeHeight(1),
                              SizedBox(
                                height: 2.h,
                                width: 35.w,
                                child: CustomTextField(
                                  fillColor: Colors.white,
                                  borderColor: Colors.white30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      buildSizeWidth(5),
                      Container(
                        width:35.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffE2E2E2), width: 1),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              addTextPoppinsLight(
                                  text: 'Guest',
                                  textColor: const Color(0xff8F8F8F),
                                  fontSize: 12),
                              buildSizeHeight(1),
                              SizedBox(
                                height: 2.h,
                                width: 35.w,
                                child: CustomTextField(
                                  fillColor: Colors.white,
                                  borderColor: Colors.white30,
                                  prefixIcon: Image.asset(
                                    'assets/images/team@3x.png',
                                    height: 15.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  buildSizeHeight(2),
                  CustomButton(
                    child: addTextPoppinsLight(
                        text: 'Search',
                        textColor: const Color(0xffFFFFFF),
                        fontSize: 16.0),
                    onPressed: () {
                      Get.to(const ChoosingHotel());
                    },
                  ),
                ],
              ),
            ),
          ),
          buildSizeHeight(2),
          Image.asset('assets/images/Group 396@3x.png'),
          buildSizeHeight(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              addTextPoppinsMedium(
                  text: 'Popular Hotels',
                  textColor: Colors.black,
                  fontSize: 14.0),
              InkWell(
                onTap: () {
                  Get.to(const ChoosingHotel());
                },
                child: addTextPoppinsRegular(
                    text: 'See All',
                    textColor: const Color(0xff0B5394),
                    fontSize: 14.0),
              )
            ],
          ),
          buildSizeHeight(2),
          SizedBox(
            height: 26.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 18.h,
                          child: Image.asset(
                            'assets/images/Mask Group 16@3x.png',
                            height: 50.sp,
                          )),
                      buildSizeHeight(1),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/location@3x.png',
                            height: 18.sp,
                          ),
                          buildSizeWidth(1),
                          addTextPoppinsRegular(
                              text: 'Mogadishu, Somalia',
                              textColor: Colors.black,
                              fontSize: 14),
                          buildSizeWidth(15),
                          Column(
                            children: [
                              addTextPoppinsMedium(
                                  text: '\$69',
                                  textColor: Colors.black,
                                  fontSize: 18),
                              addTextPoppinsLight(
                                  text: '/night',
                                  textColor: const Color(0xff8F8F8F),
                                  fontSize: 12)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
