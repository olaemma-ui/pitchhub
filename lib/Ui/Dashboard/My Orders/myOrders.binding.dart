import 'package:get/get.dart';
import 'package:pitchub/Ui/Dashboard/My%20Orders/myOrders.controller.dart';

class MyOrdersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyOrdersController>(() => MyOrdersController());
  }
}
