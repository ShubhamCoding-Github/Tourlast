import 'package:Tourlast/View/apartments_screen/apartment_cancelled.dart';
import 'package:Tourlast/View/apartments_screen/apartment_completed.dart';
import 'package:Tourlast/View/apartments_screen/apartment_upcoming.dart';
import 'package:Tourlast/View/dashboardscreen/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/utils.dart';

class ApartmentCompletScreen extends StatefulWidget {
  const ApartmentCompletScreen({super.key});

  @override
  State<ApartmentCompletScreen> createState() => _ApartmentCompletScreenState();
}

class _ApartmentCompletScreenState extends State<ApartmentCompletScreen>
  with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
  controller = TabController(vsync: this, length: 3);
  // TODO: implement initState
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:  Stack(
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
                     Get.to(const BottomNavBar());
                   },
                   child: Image.asset(
                     'assets/images/Group 338@3x.png',
                     height: 25.sp,
                   ),
                 ),
                 addTextPoppinsRegular(
                     text: 'My Bookings',
                     textColor: Colors.white,
                     fontSize: 18),
                 CircleAvatar(
                   child: Image.asset('assets/images/Mask Group 14@3x.png'),
                 ),
               ],
             ),
           ),
         ),
         Positioned(top: 45.sp,
             child: buildTabBar()),
         Column(
           children: [
             Container(
               height: 20.h,
             ),
             Expanded(
               child: TabBarView(controller: controller,
                   children: const [
                   ApartmentCompleted(),
                    ApartmentUpcoming(),
                   ApartmentCancelled(),
                   ]),
             ),
           ],
         )
       ]),
    );
  }
  Widget buildTabBar() {
    return Container(
        height: 25.sp,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.sp)),
        child: TabBar(
          isScrollable: true,
          indicator: const BoxDecoration(
            color: Color(0xffA0D3FE),
            borderRadius: BorderRadiusDirectional.all(Radius.circular(16)),
          ),
          dividerColor: Colors.white,
          controller: controller,
          labelPadding: EdgeInsets.zero,
          indicatorColor: Colors.transparent,

          onTap: (index) {
            print(index);
            setState(() {});
          },
          labelColor: Colors.black,
          labelStyle: const TextStyle(
              color: Color(0xffE49136),
              fontSize: 13.0,
              fontFamily: 'Poppins-Regular'),
          unselectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontFamily: 'Poppins-Regular'),
          unselectedLabelColor: const Color(0xff1C1D1F),
          tabs: const [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Tab(
                text: 'Completed',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Tab(
                text: 'Upcoming',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Tab(
                text: 'Cancelled',
              ),
            ),
          ],
        ));
  }
}
