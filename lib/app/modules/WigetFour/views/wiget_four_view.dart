import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:ibraheem_app/app/font_manager.dart';
import 'package:ibraheem_app/primary_text.dart';

import '../controllers/wiget_four_controller.dart';

class WigetFourView extends GetView<WigetFourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .35,
              padding: const EdgeInsets.only(bottom: 30),
              width: double.infinity,
              child: Image.asset('assets/ddd.png'),
            ),
            Container(
              height: 800.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 8,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 10.h),
                      width: 50.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.h, right: 14.w, left: 14.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PrimaryText(
                          'The Academic College of Netanya',
                          fontSize: 18,
                          fontWeight: FontWeightManager.bold,
                          color: Colors.black,
                        ),
                        SizedBox(height: 15.h),
                        const PrimaryText(
                          'The Academy Netanya is one of the leading academic institutions in Israel and has been recognized and recognized nationally and internationally for 25 years. There are more than twenty thousand graduates of various and unique academic degrees belonging to the Faculty. ',
                          fontSize: 15,
                          textAlign: TextAlign.justify,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 15.h),
                        const PrimaryText(
                          'First Year Subjects',
                          fontSize: 16,
                          fontWeight: FontWeightManager.bold,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        const PrimaryText(
                          '- Engineering',
                          fontSize: 14,
                          fontWeight: FontWeightManager.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const PrimaryText(
                          '- Law',
                          fontSize: 14,
                          fontWeight: FontWeightManager.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const PrimaryText(
                          '- Languages',
                          fontSize: 14,
                          fontWeight: FontWeightManager.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const PrimaryText(
                          '- Information Technology',
                          fontSize: 14,
                          fontWeight: FontWeightManager.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const PrimaryText(
                          '- Medicine',
                          fontSize: 14,
                          fontWeight: FontWeightManager.bold,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
