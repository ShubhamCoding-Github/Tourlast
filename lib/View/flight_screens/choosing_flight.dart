import 'package:Tourlast/Utility/utils.dart';
import 'package:Tourlast/View/flight_screens/flight_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChoosingFlight extends StatefulWidget {
  const ChoosingFlight({super.key});

  @override
  State<ChoosingFlight> createState() => _ChoosingFlightState();
}

class _ChoosingFlightState extends State<ChoosingFlight> {
  String? dropDownValue;
  var items = [
    'Top price',
    'Average price',
    'Cheapest price',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FA),
      body: Stack(
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
                      text: 'Choosing Flights',
                      textColor: Colors.white,
                      fontSize: 18.0),
                  CircleAvatar(
                    child: Image.asset('assets/images/Mask Group 14@3x.png'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 45.sp, left: 20.sp, right: 20.sp),
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
                      padding: EdgeInsets.all(20.sp),
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
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Get.to(const FlightDetails());
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          'assets/images/Group 361@3x.png',
                                          height: 30.sp),
                                      SizedBox(
                                        height: 10.h,
                                        child: const VerticalDivider(
                                          thickness: 1,
                                          width: 20,
                                          color: Color(0xffE9E9E9),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              addTextPoppinsLight(
                                                  text: 'Departure',
                                                  textColor:
                                                      const Color(0xffA8A8A8),
                                                  fontSize: 12.0),
                                            ],
                                          ),
                                          addTextPoppinsRegular(
                                              text: '04:25 PM',
                                              textColor: Colors.black,
                                              fontSize: 16.0),
                                          buildSizeHeight(2),
                                          addTextPoppinsLight(
                                              text: 'Duration',
                                              textColor:
                                                  const Color(0xffA8A8A8),
                                              fontSize: 12.0),
                                          addTextPoppinsRegular(
                                              text: '04:25 PM',
                                              textColor: Colors.black,
                                              fontSize: 16.0),
                                        ],
                                      ),
                                      buildSizeWidth(20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          addTextPoppinsLight(
                                              text: 'Arrival',
                                              textColor:
                                                  const Color(0xffA8A8A8),
                                              fontSize: 12.0),
                                          addTextPoppinsRegular(
                                              text: '04:25 PM',
                                              textColor: Colors.black,
                                              fontSize: 16.0),
                                          buildSizeHeight(2),
                                          addTextPoppinsSemiBold(
                                              text: '\$450.00',
                                              textColor:
                                                  const Color(0xff0B5394),
                                              fontSize: 15.0),
                                          addTextPoppinsLight(
                                              text: '/ person',
                                              textColor:
                                                  const Color(0xffA8A8A8),
                                              fontSize: 12.0),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset('assets/images/Mask Group 46@3x.png',
                                  fit: BoxFit.fill, height: 22.sp),
                            ],
                          ),
                        );
                      }),
                  InkWell(
                    onTap: () {
                      Get.to(const FlightDetails());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(32),
                            bottomLeft: Radius.circular(32)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Group 361@3x.png',
                                height: 30.sp),
                            SizedBox(
                              height: 10.h,
                              child: const VerticalDivider(
                                thickness: 1,
                                width: 20,
                                color: Color(0xffE9E9E9),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    addTextPoppinsLight(
                                        text: 'Departure',
                                        textColor: const Color(0xffA8A8A8),
                                        fontSize: 12.0),
                                  ],
                                ),
                                addTextPoppinsRegular(
                                    text: '04:25 PM',
                                    textColor: Colors.black,
                                    fontSize: 16.0),
                                buildSizeHeight(2),
                                addTextPoppinsLight(
                                    text: 'Duration',
                                    textColor: const Color(0xffA8A8A8),
                                    fontSize: 12.0),
                                addTextPoppinsRegular(
                                    text: '04:25 PM',
                                    textColor: Colors.black,
                                    fontSize: 16.0),
                              ],
                            ),
                            Column(
                              children: [
                                addTextPoppinsLight(
                                    text: 'Arrival',
                                    textColor: const Color(0xffA8A8A8),
                                    fontSize: 12.0),
                                addTextPoppinsRegular(
                                    text: '04:25 PM',
                                    textColor: Colors.black,
                                    fontSize: 16.0),
                                buildSizeHeight(2),
                                addTextPoppinsSemiBold(
                                    text: '\$450.00',
                                    textColor: const Color(0xff0B5394),
                                    fontSize: 15.0),
                                addTextPoppinsLight(
                                    text: '/ person',
                                    textColor: const Color(0xffA8A8A8),
                                    fontSize: 12.0),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
