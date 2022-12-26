import 'package:get/get.dart';

import '../controllers/wiget_one_controller.dart';

class WigetOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WigetOneController>(
      () => WigetOneController(),
    );
  }
}
