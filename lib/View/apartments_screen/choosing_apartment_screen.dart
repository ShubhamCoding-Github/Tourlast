import 'package:Tourlast/View/apartments_screen/apartmentdetails_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/utils.dart';

class ApartementScreen extends StatefulWidget {
  const ApartementScreen({super.key});

  @override
  State<ApartementScreen> createState() => _ApartementScreenState();
}

class _ApartementScreenState extends State<ApartementScreen> {
  String? dropDownValue;
  var items = [
    'Top price',
    'Average price',
    'Cheapest price',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment:Alignment.topCenter,
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
                      text: 'Apartments',
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
            padding: EdgeInsets.only(top:45.sp,left: 20.sp,right: 20.sp),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(12),
                          topStart: Radius.circular(12)),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(20.sp),
                      child: Row(
                        children: [
                          addTextPoppinsRegular(
                              text: 'Filter:',
                              textColor: Colors.black,
                              fontSize: 15.0),
                          buildSizeWidth(2),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: const Color(0xffA0D3FE)),
                                color: Colors.white,
                                borderRadius:
                                BorderRadiusDirectional.circular(6),
                              ),
                              child: Padding(
                                  padding:  EdgeInsets.only(
                                      left: 10.sp, right: 10.sp),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: dropDownValue,
                                        items: items.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: addTextPoppinsRegular(
                                                  text: items,
                                                  textColor: Colors.black,
                                                  fontSize: 13.0));
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropDownValue = newValue!;
                                          });
                                        }),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ApartmentDetails());
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                      child: Image.asset(
                                          'assets/images/Mask Group 23@3x.png',
                                          height: 25.sp),
                                    ),
                                    buildSizeWidth(1),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        addTextPoppinsRegular(
                                            text: 'The karma villa',
                                            textColor: Colors.black,
                                            fontSize: 15.0),
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/location@3x.png',
                                                height: 15.sp),
                                            buildSizeWidth(2),
                                            addTextPoppinsRegular(
                                                text: 'Kuta, Badung, Bali',
                                                textColor: const Color(
                                                    0xff0B5394),
                                                fontSize: 12.0),
                                          ],
                                        ),
                                        buildSizeHeight(2),
                                        Row(
                                          children: [
                                            addTextPoppinsMedium(
                                                text: '\$69',
                                                textColor: Colors.black,
                                                fontSize: 20.0),
                                            addTextPoppinsLight(
                                                text: '/night',
                                                textColor: Color(0xff8F8F8F),
                                                fontSize: 12.0),
                                            buildSizeWidth(5),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  const BorderRadiusDirectional
                                                      .all(Radius.circular(30)),
                                                  border: Border.all(
                                                      color:
                                                      const Color(0xffA0D3FE))),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 2,
                                                    bottom: 2),
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/star@3x.png',
                                                      height: 15.sp,
                                                    ),
                                                    addTextPoppinsRegular(
                                                        text: '4.5',
                                                        textColor:
                                                        const Color(0xff0B5394),
                                                        fontSize: 12.0),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset('assets/images/Mask Group 46@3x.png',fit: BoxFit.fill,
                                height: 22.sp),
                          ],
                        ),
                      );
                    }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
