import 'package:Tourlast/View/home_screen/editprofile_screen.dart';
import 'package:Tourlast/View/support_helpdesk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';
import '../../controller/profile_controller.dart';
import '../../storage/base_shared_preference.dart';
import '../../storage/sp_keyes.dart';

class ProfileScreen extends StatefulWidget {
    const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController controller=Get.put(ProfileController());
  TextEditingController fullName=TextEditingController();
  TextEditingController mobileNo=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController address=TextEditingController();
   late int userId;
   late String apiToken;
   late String userName;
   late String userEmail;
   late String userPhoneNo;
    String ?userProfile;
   late String message;
@override
  void initState() {
    // TODO: implement initState
   print('flutter=======');
    super.initState();
    getData();
  }
    Future<void> getData() async {
        print('object');
        print("name----${await BaseSharedPreference().getString(SpKeys().userName)}");
         fullName.text =await BaseSharedPreference().getString(SpKeys().userName)??'';
         email.text =await BaseSharedPreference().getString(SpKeys().userEmail)??'';
         mobileNo.text =await BaseSharedPreference().getString(SpKeys().userPhoneNo)??'';
         userProfile =await BaseSharedPreference().getString(SpKeys().userprofile)??'';
   //    message =await BaseSharedPreference().getString(SpKeys().massage)??'';


       setState(() {

        });
        print("Stored userId: ${ fullName.text}");
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Stack(
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
                        text: 'Profile', textColor: Colors.white, fontSize: 18),
                    Container(
                      height: 4.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffA0D3FE),
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                          child: InkWell(
                            onTap: () {
                              Get.to(const EditProfileScreen())?.then((value){getData();
                                setState(() {});
                              });
                            },
                            child: addTextPoppinsMedium(
                                text: 'EDIT',
                                textColor: const Color(0xff0B5394),
                                fontSize: 14),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50.sp,
                left: 20.sp,
                right: 20.sp,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0.5.sp,
                              blurRadius: 5.sp)
                        ],
                        color: Colors.white,
                        borderRadius:
                            const BorderRadiusDirectional.all(Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          children: [
                            buildSizeHeight(5),
                            CustomTextField(
                              readOnly:true,
                             controller: fullName,
                              hintText: 'Full Name',
                             ),
                            buildSizeHeight(2),
                            CustomTextField(
                              readOnly:true,
                              controller:email,
                              hintText: 'Email Address',
                            ),
                            buildSizeHeight(2),
                            CustomTextField(
                              readOnly:true,
                              controller:mobileNo,
                              hintText: 'Phone',
                            ),
                            buildSizeHeight(2),
                            CustomTextField(
                              readOnly:true,
                               controller: address,
                               hintText: 'Address',
                             ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: -30,
                    child:userProfile!=null?  CircleAvatar(
                      backgroundColor: const Color(0xffA0D3FE),
                      maxRadius: 40,
                      backgroundImage:NetworkImage(userProfile!),
                    ):
                    Image.asset(
                      'assets/images/Mask Group 14@3x.png',
                      height: 35.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
      ),
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                borderColor: const Color(0xff0B5394),
                color: Colors.transparent,
                btnHeight: 25.sp,
                btnWidth: 50.sp,
                child: addTextPoppinsLight(
                    text: 'Delete Account',
                    textColor: const Color(0xff0B5394),
                    fontSize: 16.0),
                onPressed: () {},
              ),
              buildSizeWidth(5),
              CustomButton(
                btnHeight: 25.sp,
                btnWidth: 50.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logout (1)@3x.png',
                      height: 15.sp,
                    ),
                    buildSizeWidth(2),
                    addTextPoppinsLight(
                        text: 'Logout', textColor: Colors.white, fontSize: 16.0),
                  ],
                ),
                onPressed: () {
                  controller.logout();
                },
              ),
            ],
          ),
      ),
            buildSizeHeight(2),
            InkWell(
              onTap: () {
                Get.to(const SupportHelpDesk());
              },
                child: addTextPoppinsBold(text: 'Need Help?', textColor: const Color(0xff0B5394), fontSize:18.0)),
    ]),
        ));
  }
}
