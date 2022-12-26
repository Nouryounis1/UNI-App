import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:ibraheem_app/app/font_manager.dart';
import 'package:ibraheem_app/app/modules/WigetFour/views/wiget_four_view.dart';
import 'package:ibraheem_app/app/modules/WigetOne/views/wiget_one_view.dart';
import 'package:ibraheem_app/app/modules/WigetThree/views/wiget_three_view.dart';
import 'package:ibraheem_app/app/modules/WigetTwo/views/wiget_two_view.dart';

import 'package:ibraheem_app/custom_appbar.dart';
import 'package:ibraheem_app/primary_text.dart';
import 'package:image_card/image_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController controller = Get.put(HomeController());

  final List<String> imageList = [
    'assets/aaa.png',
    'assets/bbb.png',
    'assets/ccc.png',
    'assets/ddd.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
              child: FlutterCarousel(
                options: CarouselOptions(
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  clipBehavior: Clip.none,
                  height: 200.0,
                  showIndicator: true,
                  slideIndicator: const CircularSlideIndicator(
                    currentIndicatorColor: Colors.deepPurple,
                    indicatorBackgroundColor: Colors.transparent,
                    indicatorBorderColor: Colors.deepPurple,
                  ),
                ),
                items: imageList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          if (i == 'assets/aaa.png') {
                            Get.to(WigetOneView());
                          } else if (i == 'assets/bbb.png') {
                            Get.to(WigetTwoView());
                          } else if (i == 'assets/ccc.png') {
                            Get.to(WigetThreeView());
                          } else {
                            Get.to(WigetFourView());
                          }
                        },
                        child: Container(
                            clipBehavior: Clip.none,
                            width: 350.w,
                            height: 100.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 2),
                                    blurRadius: 8,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.r),
                                child: Image.asset(
                                  i,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const PrimaryText(
              'Universities',
              fontSize: 24,
              fontWeight: FontWeightManager.bold,
            ),
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(
              onTap: () => Get.to(WigetOneView()),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                child: TransparentImageCard(
                  endColor: Colors.grey.withOpacity(0.3),
                  borderRadius: 24.r,
                  width: 290.w,
                  height: 150.h,
                  imageProvider: const AssetImage(
                    'assets/aaa.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(
              onTap: () => Get.to(WigetTwoView()),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                child: TransparentImageCard(
                  endColor: Colors.grey.withOpacity(0.3),
                  borderRadius: 24.r,
                  width: 290.w,
                  height: 150.h,
                  imageProvider: const AssetImage(
                    'assets/bbb.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(
              onTap: () => Get.to(WigetThreeView()),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                child: TransparentImageCard(
                  endColor: Colors.grey.withOpacity(0.3),
                  borderRadius: 24.r,
                  width: 290.w,
                  height: 150.h,
                  imageProvider: const AssetImage(
                    'assets/ccc.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(
              onTap: () => Get.to(WigetFourView()),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                child: TransparentImageCard(
                  endColor: Colors.grey.withOpacity(0.3),
                  borderRadius: 24.r,
                  width: 290.w,
                  height: 150.h,
                  imageProvider: const AssetImage(
                    'assets/ddd.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
