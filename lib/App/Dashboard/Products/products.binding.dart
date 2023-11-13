import 'package:get/get.dart';
import 'package:pitchub/App/Dashboard/Products/products.controller.dart';

class ProductsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductsController>(() => ProductsController());
  }
}
