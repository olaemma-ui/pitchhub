import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/constants/constants.dart';
import 'package:pitchub/core/style.dart';
import 'package:pitchub/Utils/routes.dart';
import 'package:pitchub/Widgets/categories.widget.dart';
import 'package:pitchub/Widgets/productCard.widget.dart';
import 'package:pitchub/Widgets/separator.widget.dart';

import 'products.controller.dart';

class ProductsPage extends GetWidget<ProductsController> {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<ProductsController>(
        init: ProductsController(),
        builder: (controller) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppSeparator(
                  title: 'Categories',
                  color: ColorConstant.light,
                  leadingColor: ColorConstant.light,
                  trailingText: '',
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        7,
                        (index) => AppCategories(
                          icon: FlutterIcons.car_ant,
                          color: ColorConstant.blue_500,
                          onTap: () {},
                          text: 'Shoes with bangs',
                        ).paddingOnly(left: 8, right: 8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const AppSeparator(
                    title: 'Top Sellers',
                    color: ColorConstant.transLight,
                    leadingColor: ColorConstant.dark,
                    trailingText: 'See All'),
                const SizedBox(height: 8),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: size.width,
                      // height: size.height - 280,
                      child: GridView.builder(
                        itemCount: 10,
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => AppProductCard(
                            image: Image.asset(Assets.banner),
                            name: 'Lampwork beads Ear rings',
                            price: '\$50000.00',
                            onTap: () {
                              Get.toNamed(AppRoute.productDetailsPage);
                            },
                            details:
                                'This charger helps you charge your device at a very high speed.'),
                        // physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 210.0,
                            crossAxisCount: size.width <= 430
                                ? 2
                                : size.width <= 700
                                    ? 3
                                    : size.width <= 1100
                                        ? 4
                                        : size.width <= 1100
                                            ? 4
                                            : size.width <= 1400
                                                ? 6
                                                : 8),
                      ),
                    )),
              ],
            ),
          );
        });
  }
}
