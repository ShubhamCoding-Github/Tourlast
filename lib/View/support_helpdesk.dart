import 'package:Tourlast/Utility/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Utility/custom_button.dart';
import '../Utility/custom_textfield.dart';

class SupportHelpDesk extends StatefulWidget {
  const SupportHelpDesk({super.key});

  @override
  State<SupportHelpDesk> createState() => _SupportHelpDeskState();
}

class _SupportHelpDeskState extends State<SupportHelpDesk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/images/backbutton.png',
                        height: 25.sp,
                      ),
                    ),
                    CircleAvatar(
                      child: Image.asset('assets/images/Mask Group 14@3x.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addTextPoppinsRegular(
                          text: 'Need Help?',
                          textColor: Colors.black,
                          fontSize: 22.0),
                      addTextPoppinsLight(
                        height: 2,
                          text:
                              'Inquire down below to reach out to a member of our help team for assistance.',
                          textColor: Colors.black,
                          fontSize: 13.0,
                          textAlign: TextAlign.start),
                    buildSizeHeight(2),
                    Center(child: addTextPoppinsRegular(text: '24/7 Support Center', textColor:Colors.black, fontSize:22.0)),
                      buildSizeHeight(2),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffA0D3FE)),
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 20.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                addTextPoppinsRegular(text: 'Please Call:', textColor:Colors.black, fontSize:15.0),
                                addTextPoppinsRegular(text: '+1 2563-9865-845', textColor:Colors.black, fontSize:15.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      buildSizeHeight(3),
                      Center(child: addTextPoppinsLight(text: 'or', textColor:Colors.black, fontSize:13.0)),
                      buildSizeHeight(2),
                      CustomTextField(
                        hintText: 'Full Name',
                      ),
                      buildSizeHeight(2),
                      CustomTextField(
                        hintText: 'Phone Number',
                      ),
                      buildSizeHeight(2),
                      CustomTextField(
                        hintText: 'Subject',
                      ),
                      buildSizeHeight(2),
                      CustomTextField(
                        maxLine: 4,
                        hintText: 'Your message goes here...',
                      ),
                      buildSizeHeight(3),
                      CustomButton(
                        child: addTextPoppinsLight(
                            text: 'Submit',
                            textColor: const Color(0xffFFFFFF),
                            fontSize: 16.0),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
