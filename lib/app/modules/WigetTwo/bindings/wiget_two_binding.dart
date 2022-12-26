import 'package:get/get.dart';

import '../controllers/wiget_two_controller.dart';

class WigetTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WigetTwoController>(
      () => WigetTwoController(),
    );
  }
}
