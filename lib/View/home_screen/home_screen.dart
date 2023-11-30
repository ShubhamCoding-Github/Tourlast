import 'package:Tourlast/View/apartments_screen/Apartment_tabbarscreen.dart';
import 'package:Tourlast/View/flight_screens/flight_tabbar.dart';
import 'package:Tourlast/View/hotel_screens/hotel_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Utility/utils.dart';
import '../../controller/home_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  HomeScreenController homeController = Get.put(HomeScreenController());

  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 3);
    // TODO: implement initState
    print('object HOMWWWWWW');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FA),
      body: SingleChildScrollView(
        child: Stack(
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
              height: 80.sp,
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildSizeHeight(2),
                      Center(
                        child: CircleAvatar(
                          child: Image.asset('assets/images/Group 392@3x.png'),
                        ),
                      ),
                      buildSizeHeight(2),
                      addTextPoppinsLight(
                          text: 'Hello,Sarah!',
                          textColor: Colors.white,
                          fontSize: 16.0),
                      addTextPoppinsRegular(
                          text: 'Let\'Start Exploring' '👋',
                          textColor: Colors.white,
                          fontSize: 22.0),
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 55.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTabBar(),
                  Column(
                    children: [
                      SizedBox(
                        height: 90.h,
                        child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: controller,
                            children: const [
                              FlightTabBar(),
                              HotelTabBar(),
                              ApartmentTabBarScreen()
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabBar() {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(30),
                    topEnd: Radius.circular(30))),
            height: 10.h,
            child:Obx(() =>TabBar(
              labelColor: Colors.black,
              controller: controller,
              dividerColor: Colors.black,
              labelPadding: EdgeInsets.zero,
              indicatorColor: Colors.transparent,
              labelStyle: const TextStyle(
                fontSize: 13.0,
                fontFamily: 'Poppins-Regular',
              ),
              indicator: BoxDecoration(
                  borderRadius: homeController.currentIndex.value == 0
                      ? const BorderRadius.only(topLeft: Radius.circular(30))
                      : homeController.currentIndex.value == 1
                          ? BorderRadius.zero
                          : const BorderRadius.only(
                              topRight: Radius.circular(30)),
                  color: const Color(0xffA0D3FE)),
              onTap: (index) {
                homeController.currentIndex.value = index;
              },
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                    icon: Image.asset('assets/images/plane@3x.png',
                        height: 18.sp),
                    text: "Flight"),
                Tab(
                    icon: Image.asset('assets/images/Layer 43@3x.png',
                        height: 18.sp),
                    text: "Hotel"),
                Tab(
                    icon:
                        Image.asset('assets/images/g663@3x.png', height: 18.sp),
                    text: "Apartment"),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
