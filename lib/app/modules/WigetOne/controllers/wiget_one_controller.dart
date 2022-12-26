import 'package:get/get.dart';

class WigetOneController extends GetxController {
  //TODO: Implement WigetOneController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
