import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/App/View/appView.controller.dart';
import 'package:pitchub/Utils/constants.dart';
import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/appDrawer.widget.dart';
import 'package:pitchub/Widgets/sidebar.widget.dart';

class AppView extends GetWidget<AppViewController> {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetBuilder<AppViewController>(
      // init: AppViewController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          // key: _key,
          // drawer: AppDrawer(),

          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Image.asset(
              AppConstants.textLogo,
              width: 100,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FlutterIcons.search1_ant),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FlutterIcons.cart_mco),
              ),
            ],
          ),
          body: Row(
            children: [
              if (size.width > 900)
                AppSideBar(
                  selectedIndex: controller.currentPage,
                  onTap: (pageNo) {
                    controller.page(pageNo: pageNo);
                  },
                ),
              Expanded(
                child: PageView(
                  controller: controller.pageViewController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: controller.pages,
                ),
              ),
            ],
          ),
          bottomNavigationBar: (size.width > 900)
              ? null
              : BottomNavigationBar(
                  onTap: (value) {
                    controller.page(pageNo: value);
                  },
                  currentIndex: controller.currentPage,
                  selectedLabelStyle: const TextStyle(
                    color: ColorConstant.brand,
                    fontFamily: 'manrope',
                    fontWeight: FontWeight.bold,
                  ),
                  selectedItemColor: ColorConstant.brand,
                  selectedFontSize: 12,
                  type: BottomNavigationBarType.fixed,
                  items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(FlutterIcons.home_ant),
                          label: 'Home',
                          activeIcon: Icon(
                            FlutterIcons.home_ant,
                            color: ColorConstant.brand,
                          )),
                      BottomNavigationBarItem(
                          icon: Icon(FlutterIcons.list_ent),
                          label: 'Categories',
                          activeIcon: Icon(
                            FlutterIcons.list_ent,
                            color: ColorConstant.brand,
                          )),
                      BottomNavigationBarItem(
                          icon: Icon(FlutterIcons.bike_mco),
                          label: 'My Orders',
                          activeIcon: Icon(
                            FlutterIcons.bike_mco,
                            color: ColorConstant.brand,
                          )),
                      BottomNavigationBarItem(
                          icon: Icon(FlutterIcons.user_fea),
                          label: 'Account',
                          activeIcon: Icon(
                            FlutterIcons.user_fea,
                            color: ColorConstant.brand,
                          )),
                    ]),
        );
      },
    );
  }
}
