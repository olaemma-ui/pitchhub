import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/App/Dashboard/Cartegory/category.controller.dart';
import 'package:pitchub/Utils/constants.dart';
import 'package:pitchub/Utils/routes.dart';
import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/productCard.widget.dart';

class CategoryPage extends GetWidget<CategoryPageController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return GetBuilder<CategoryPageController>(
        init: CategoryPageController(),
        builder: (controller) {
          return Row(
            children: [
              Container(
                width: 80,
                // color: Colors.white,
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Column(
                  children: controller.categories
                      .map((e) => GestureDetector(
                            onTap: () {
                              controller.selectCategory(
                                  controller.categories.indexOf(e));
                            },
                            child: Obx(() => Container(
                                  color: controller.categories.indexOf(e) ==
                                          controller.selectedIndex.value
                                      ? ColorConstant.brand
                                      : null,
                                  padding: const EdgeInsets.all(8),
                                  margin: const EdgeInsets.only(bottom: 4),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    textAlign: TextAlign.left,
                                    style: textTheme.labelSmall!.copyWith(
                                        color: controller.categories
                                                    .indexOf(e) ==
                                                controller.selectedIndex.value
                                            ? ColorConstant.light
                                            : ColorConstant.black),
                                  ),
                                )),
                          ))
                      .toList(),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(
                              color: ColorConstant.grey, width: .1))),
                  child: SizedBox(
                    width: size.width - 100,
                    // height: size.height - 280,
                    child: GridView.builder(
                      itemCount: 10,
                      primary: false,
                      // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => SizedBox(
                        width: 100,
                        child: AppProductCard(
                            imageHeight: 100,
                            image: Image.asset(AppConstants.banner),
                            name: 'Lampwork beads Ear rings',
                            price: '\$50000.00',
                            // showAddToCart: true,
                            onTap: () {
                              Get.toNamed(AppRoute.productDetailsPage);
                            },
                            details:
                                'This charger helps you charge your device at a very high speed.'),
                      ),
                      // physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 230.0,
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
                                              : 8
                                              ),
                    ),
                  )),
            ],
          );
        });
  }
}
