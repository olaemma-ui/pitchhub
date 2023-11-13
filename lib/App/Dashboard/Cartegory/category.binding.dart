import 'package:get/get.dart';

import 'category.controller.dart';

class CategoryPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryPageController>(() => CategoryPageController());
  }
}
