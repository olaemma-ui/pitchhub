import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPageController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxInt selectedIndex = 0.obs;

  List<String> categories = [
    'Clothing',
    'Shoes',
    'Sneakers',
    'Bags',
    'Furniture'
  ];

  selectCategory(int index) {
    selectedIndex.value = index;
  }

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
