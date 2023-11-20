import 'package:get/get.dart';

import 'create_new_password.controller.dart';


class CreateNewPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewPasswordController>(() => CreateNewPasswordController());
  }
}
