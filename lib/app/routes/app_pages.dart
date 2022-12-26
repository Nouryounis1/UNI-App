import 'package:get/get.dart';

import '../../splash_screen.dart';
import '../modules/WigetFour/bindings/wiget_four_binding.dart';
import '../modules/WigetFour/views/wiget_four_view.dart';
import '../modules/WigetOne/bindings/wiget_one_binding.dart';
import '../modules/WigetOne/views/wiget_one_view.dart';
import '../modules/WigetThree/bindings/wiget_three_binding.dart';
import '../modules/WigetThree/views/wiget_three_view.dart';
import '../modules/WigetTwo/bindings/wiget_two_binding.dart';
import '../modules/WigetTwo/views/wiget_two_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WIGET_ONE,
      page: () => WigetOneView(),
      binding: WigetOneBinding(),
    ),
    GetPage(
      name: _Paths.WIGET_TWO,
      page: () => WigetTwoView(),
      binding: WigetTwoBinding(),
    ),
    GetPage(
      name: _Paths.WIGET_THREE,
      page: () => WigetThreeView(),
      binding: WigetThreeBinding(),
    ),
    GetPage(
      name: _Paths.WIGET_FOUR,
      page: () => WigetFourView(),
      binding: WigetFourBinding(),
    ),
  ];
}
