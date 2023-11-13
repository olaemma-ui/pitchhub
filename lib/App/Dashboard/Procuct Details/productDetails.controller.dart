import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  Rx<String?> size = Rx(null);
  RxInt activeIndex = 0.obs;

  @override
  void onInit() {
    // fetchApi();
    super.onInit();
  }

  @override
  void onClose() {
    // user.close();
    super.onClose();
  }
}
