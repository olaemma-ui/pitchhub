import 'package:get/get.dart';
import 'package:pitchub/Ui/Profile/profile.controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
