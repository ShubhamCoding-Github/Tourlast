import 'package:Tourlast/View/dashboardscreen/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';

class RattingScreen extends StatefulWidget {
  const RattingScreen({super.key});

  @override
  State<RattingScreen> createState() => _RattingScreenState();
}

class _RattingScreenState extends State<RattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
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
                          text: 'Rating',
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
                padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 50.sp),
                child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0.5.sp,
                            blurRadius: 5.sp)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(21),
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              addTextPoppinsMedium(
                                  text: 'Give Rate',
                                  textColor: Colors.black,
                                  fontSize: 16.0),
                              buildSizeHeight(2),
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              buildSizeHeight(5),
                              CustomTextField(
                                maxLine: 5,
                                fillColor: Colors.white,
                                borderColor: const Color(0xffD5D5D5),
                                hintText: 'Give Review',
                              ),
                              buildSizeHeight(5),
                              addTextPoppinsMedium(
                                  text: 'How was experience',
                                  textColor: Colors.black,
                                  fontSize: 16),
                              buildSizeHeight(2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff0B5394)),
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                40),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/images/Layer 2@3x.png',
                                          height: 30.sp,
                                        ),
                                      )),
                                  Image.asset(
                                    'assets/images/emoji.png',
                                    height: 30.sp,
                                  ),
                                  Image.asset(
                                    'assets/images/emoji3.png',
                                    height: 30.sp,
                                  ),
                                  Image.asset(
                                    'assets/images/emoji4.png',
                                    height: 30.sp,
                                  ),
                                ],
                              ),
                            ]))),
              )
            ]),
        Padding(
          padding: EdgeInsets.all(20.sp),
          child: CustomButton(
            child: addTextPoppinsLight(
                text: 'Submit',
                textColor: const Color(0xffFFFFFF),
                fontSize: 16.0),
            onPressed: () {
              Get.to(const BottomNavBar());
            },
          ),
        ),
      ]),
    ));
  }
}
