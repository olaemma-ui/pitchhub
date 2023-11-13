import 'package:get/get.dart';

import 'appView.controller.dart';

class AppViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppViewController>(() => AppViewController());
  }
}
