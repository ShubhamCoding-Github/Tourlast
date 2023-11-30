import 'dart:async';

import 'package:Tourlast/View/flight_screens/choosing_flight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';
import '../../controller/search_flight_controller.dart';
import '../../storage/base_shared_preference.dart';
import '../../storage/sp_keyes.dart';

class FlightTabBar extends StatefulWidget {
  const FlightTabBar({super.key});

  @override
  State<FlightTabBar> createState() => _FlightTabBarState();
}

class _FlightTabBarState extends State<FlightTabBar> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  Timer? _debounce;
  FlightSearchController controller = Get.put(FlightSearchController());
  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController passenger = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getFlightSearch('search');
    init();
  }

  init() async {
    final String token =
        await BaseSharedPreference().getString(SpKeys().apiToken) ?? "";
    print("token--$token");
  }

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
                padding:
                    EdgeInsets.symmetric(horizontal: 20.sp, vertical: 15.sp),
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
                              isChecked2 = !value;
                            });
                          },
                        ),
                        addTextPoppinsMedium(
                            text: ' Round Trip',
                            textColor: Colors.black,
                            fontSize: 14.0),
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
                              isChecked1 = !value;
                            });
                          },
                        ),
                        addTextPoppinsMedium(
                            text: 'One Way',
                            textColor: Colors.black,
                            fontSize: 14.0),
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
                              width: 35.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffE2E2E2), width: 1),
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    addTextPoppinsLight(
                                        text: 'From',
                                        textColor: const Color(0xff8F8F8F),
                                        fontSize: 12),
                                    buildSizeHeight(1),
                                    SizedBox(
                                      height: 2.h,
                                      width: 35.w,
                                      child: CustomTextField(
                                        controller: from,
                                        onChanged: (value) {
                                          if (_debounce?.isActive ?? false)
                                            _debounce!.cancel();
                                          _debounce = Timer(
                                              const Duration(
                                                  milliseconds: 1500), () {
                                            controller.getFlightSearch(value);
                                            // BaseOverlays().showSnackBar(message:"Password not matched", title: "Error");
                                          });
                                          print('from----$value');
                                        },
                                        fillColor: Colors.white,
                                        borderColor: Colors.white30,
                                      ),
                                    ),
                                    // Obx(() {
                                    //   List<Items> displayList = controller. pList.value;
                                    //   return displayList.isNotEmpty
                                    //       ? Container(
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.white,
                                    //         borderRadius: BorderRadius.circular(25)),
                                    //     child: ListView.builder(
                                    //       shrinkWrap: true,
                                    //       padding: EdgeInsets.symmetric(
                                    //           vertical: 3.h, horizontal: 1.w),
                                    //       itemCount: displayList.length,
                                    //       itemBuilder: (context, index) {
                                    //         Items object = displayList[index];
                                    //         return GestureDetector(
                                    //           onTap: () {
                                    //             // FocusManager.instance.primaryFocus?.unfocus();
                                    //             // Get.to(ProviderIntro(
                                    //             //   data: object,
                                    //             // )
                                    //             // );
                                    //           },
                                    //           child: SizedBox(
                                    //             height: 10.h,
                                    //             child: ListTile(
                                    //               title: Text(object.arrivalLocation ?? '',
                                    //               ),
                                    //             ),
                                    //           ),
                                    //         );
                                    //       },
                                    //     ),
                                    //   )
                                    //       : SizedBox(
                                    //     width: 30.w,
                                    //     height: 5.h,
                                    //     child: Padding(
                                    //       padding: EdgeInsets.all(20.sp),
                                    //       child: const Column(
                                    //         crossAxisAlignment: CrossAxisAlignment.center,
                                    //         children: [
                                    //           Text(
                                    //             "No Search Result",
                                    //             style: TextStyle(
                                    //               fontSize: 22,
                                    //             ),
                                    //           ),
                                    //
                                    //         ],
                                    //       ),
                                    //     ),
                                    //   );
                                    // }),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: -28,
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffE2E2E2),
                                          width: 1),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/transfer@3x.png',
                                      height: 18.sp,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        buildSizeWidth(5),
                        Container(
                          width: 35.w,
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
                                    text: 'To',
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
                      ],
                    ),
                    buildSizeHeight(2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 35.w,
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
                                    text: 'To',
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
                                      'assets/images/g195@3x.png',
                                      height: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        buildSizeWidth(5),
                        Container(
                          width: 35.w,
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
                                    text: 'Passenger',
                                    textColor: const Color(0xff8F8F8F),
                                    fontSize: 12.0),
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
                        Get.to(const ChoosingFlight());
                      },
                    ),
                  ],
                ),
              ),
            ),
            buildSizeHeight(2),
            Image.asset('assets/images/Group 394@3x.png'),
            buildSizeHeight(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addTextPoppinsMedium(
                    text: 'Popular Places',
                    textColor: Colors.black,
                    fontSize: 14.0),
                InkWell(
                  onTap: () {
                    Get.to(const ChoosingFlight());
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
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    // Get.to(const ChoosingFlight());
                  },
                  child: Container(
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
                                      fontSize: 18.0),
                                  addTextPoppinsLight(
                                      text: '/night',
                                      textColor: const Color(0xff8F8F8F),
                                      fontSize: 12),
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
            ),
          ],
        ));
  }
}
// Expanded(
//   child: Container(
//     decoration: BoxDecoration(
//       border: Border.all(
//           color: const Color(0xffE2E2E2), width: 1),
//       borderRadius: BorderRadiusDirectional.circular(10),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           addTextPoppinsLight(
//               text: 'Date',
//               textColor: const Color(0xff8F8F8F),
//               fontSize: 12),
//           buildSizeHeight(1),
//           Row(
//             children: [
//               Image.asset(
//                 'assets/images/g195@3x.png',
//                 height: 15.sp,
//               ),
//               buildSizeWidth(2),
//               addTextPoppinsRegular(
//                   text: '02 Oct 2023',
//                   textColor: Colors.black,
//                   fontSize: 14),
//             ],
//           )
//         ],
//       ),
//     ),
//   ),
// ),
