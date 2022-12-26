import 'package:get/get.dart';

import '../controllers/wiget_four_controller.dart';

class WigetFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WigetFourController>(
      () => WigetFourController(),
    );
  }
}
