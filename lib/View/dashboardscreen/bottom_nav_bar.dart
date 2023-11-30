import 'package:Tourlast/View/apartments_screen/Mybooking_apartmentcomplet_screen.dart';
import 'package:Tourlast/View/apartments_screen/choosing_apartment_screen.dart';
import 'package:Tourlast/View/flight_screens/choosing_flight.dart';
import 'package:Tourlast/View/home_screen/my_bookings.dart';
import 'package:Tourlast/View/home_screen/profile_screen.dart';
import 'package:Tourlast/View/hotel_screens/choosing_hotel.dart';
import 'package:Tourlast/View/hotel_screens/my_booking_hotelcomplete.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/home_screen_controller.dart';
import '../home_screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // HomeScreenController homeController = Get.find<HomeScreenController>();
  HomeScreenController homeController = Get.put(HomeScreenController());


  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      homeController.currentIndex.value==0 ? const MyBooking(): homeController.currentIndex.value==1?const HotelCompletScreen():const ApartmentCompletScreen(),
      homeController.currentIndex.value==0 ?const ChoosingFlight(): homeController.currentIndex.value==1?const ChoosingHotel():const ApartementScreen(),
      const ProfileScreen(),
    ];
  }
  @override
  void initState() {
    super.initState();
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon:  Image.asset('assets/images/home (1)@3x.png'),
        title: ("Home"),
        activeColorSecondary: const Color(0xff0B5394),
        inactiveColorPrimary: const Color(0xff73727A),
      ),
      PersistentBottomNavBarItem(
        icon:  Image.asset('assets/images/Line@3x.png',color: const Color(0xff0B5394),),
        title: ("Bookings"),
        activeColorSecondary: const Color(0xff0B5394),
        activeColorPrimary: const Color(0xffA0D3FE),
        inactiveColorPrimary: const Color(0xff73727A),

      ),
      PersistentBottomNavBarItem(
        icon:  Image.asset('assets/images/compass@3x.png',color: const Color(0xff0B5394)),
        title: ("Discovery"),
        activeColorSecondary: const Color(0xff0B5394),
        activeColorPrimary: const Color(0xffA0D3FE),
        inactiveColorPrimary: const Color(0xff73727A),
      ),
      PersistentBottomNavBarItem(
        icon:  Image.asset('assets/images/user, account, people, man@3x.png',color: const Color(0xff0B5394)),
        title: ("Profile"),
        activeColorSecondary: const Color(0xff0B5394),
        activeColorPrimary: const Color(0xffA0D3FE),
        inactiveColorPrimary: const Color(0xff73727A),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);
     return Obx(() => PersistentTabView(
      bottomScreenMargin:double.minPositive ,
      margin: const EdgeInsets.all(20),
      context,
      controller: _controller,
      screens:  _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0.5.sp,
              blurRadius: 5.sp)
        ],
        borderRadius: BorderRadius.circular(32.0),
        colorBehindNavBar:const Color(0xffF8F8FA),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    ));
  }
}

