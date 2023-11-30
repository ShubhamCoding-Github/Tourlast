import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';
import '../../controller/profile_controller.dart';
import '../../storage/base_shared_preference.dart';
import '../../storage/sp_keyes.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController fullName = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
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
    super.initState();
    getData();
  }

  Future<void> getData() async {
    print('object');
     fullName.text = await BaseSharedPreference().getString(SpKeys().userName) ?? '';
     email.text = await BaseSharedPreference().getString(SpKeys().userEmail) ?? '';
     mobileNo.text = await BaseSharedPreference().getString(SpKeys().userPhoneNo) ?? '';
     userProfile = await BaseSharedPreference().getString(SpKeys().userprofile) ?? '';
    //    message =await BaseSharedPreference().getString(SpKeys().massage)??'';
    print("Stored userId: ${address.text}");

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                          controller.profileUpdate(fullName.text,email.text,mobileNo.text);
                        },
                        child: addTextPoppinsMedium(
                            text: 'SAVE',
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
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.all(Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          children: [
                            buildSizeHeight(5),
                            CustomTextField(
                              controller: fullName,
                              hintText: 'Full Name',
                            ),
                            buildSizeHeight(2),
                            CustomTextField(
                              controller: email,
                              hintText: 'Email Address',
                            ),
                            buildSizeHeight(2),
                            CustomTextField(
                              controller: mobileNo,
                              hintText: 'Phone',
                            ),
                            buildSizeHeight(2),
                            CustomTextField(
                              controller: address,
                              hintText: 'Address',
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: -30,
                    child: userProfile != null
                        ? CircleAvatar(
                            backgroundColor: const Color(0xffA0D3FE),
                            maxRadius: 40,
                            backgroundImage: NetworkImage(userProfile!),
                          )
                        : Image.asset(
                            'assets/images/Mask Group 14@3x.png',
                            height: 35.sp,
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
