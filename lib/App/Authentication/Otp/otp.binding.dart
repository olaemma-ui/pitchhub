import 'package:get/get.dart';

import 'otp.controller.dart';

class OTPBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPController>(() => OTPController());
  }
}
