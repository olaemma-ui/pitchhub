import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pitchub/App/Dashboard/Cartegory/category.ui.dart';
import 'package:pitchub/App/Dashboard/My%20Orders/myOrders.ui.dart';
import 'package:pitchub/App/Dashboard/Products/products.ui.dart';
import 'package:pitchub/App/Profile/profile.ui.dart';

class AppViewController extends GetxController {
  int currentPage = 0;
  final pageViewController = PageController(initialPage: 0);

  final List<Widget> pages = const [
    ProductsPage(),
    CategoryPage(),
    MyOrdersView(),
    ProfileView(),
  ];

  void page({required int pageNo}) {
    currentPage = pageNo;
    log('page = $pageNo ');
    pageViewController.jumpToPage(pageNo);
    update();
  }
}
