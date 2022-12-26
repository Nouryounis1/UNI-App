import 'package:get/get.dart';

import '../controllers/wiget_three_controller.dart';

class WigetThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WigetThreeController>(
      () => WigetThreeController(),
    );
  }
}
