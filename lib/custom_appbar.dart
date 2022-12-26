import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibraheem_app/app/font_manager.dart';
import 'package:ibraheem_app/primary_text.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.deepPurple,
    centerTitle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: Container(
          padding: EdgeInsets.only(left: 30.w, bottom: 20.h),
          child: Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                      radius: 32.r,
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32.r),
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.contain,
                        ),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PrimaryText(
                      'Choose BA',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeightManager.bold,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/team-svgrepo-com.svg',
                          color: Colors.white,
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const PrimaryText(
                          'Alpha Team',
                          fontSize: 15,
                          fontWeight: FontWeightManager.regular,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
  );
}
