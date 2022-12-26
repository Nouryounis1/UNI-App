import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(375, 812),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
            ),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }),
  );
}
