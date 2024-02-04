import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/Ui/Dashboard/Procuct%20Details/productDetails.controller.dart';
import 'package:pitchub/constants/constants.dart';
import 'package:pitchub/core/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';
import 'package:pitchub/Widgets/productData.widget.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key});
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return GetBuilder<ProductDetailsController>(
        builder: <ProductDetailsController>(controller) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(FlutterIcons.arrow_back_mdi),
          ),
          title: Image.asset(
            Assets.textLogo,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: ColorConstant.black,
                child: CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    padEnds: true,
                    onPageChanged: (index, reason) {
                      log('index = $index');
                      controller.activeIndex.value = index;
                    },
                  ),
                  items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.amber),
                            child: Text(
                              'text $i',
                              style: TextStyle(fontSize: 16.0),
                            ));
                      },
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Luxury handmade business official men pure leather boots for men.',
                      style: textTheme.labelLarge,
                    ),
                    const SizedBox(height: 8),
                    RichText(
                        text: TextSpan(
                            text: 'Brand Name:',
                            style: textTheme.labelSmall!
                                .copyWith(color: ColorConstant.brand),
                            children: [
                          TextSpan(
                            text: '  Donald Wears Collection',
                            style: textTheme.labelSmall,
                          ),
                        ])),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            child: Text('N50,000.00',
                                style: textTheme.titleMedium)),
                        Container(
                          width: 80,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: ColorConstant.dark, width: 1)),
                          child: DropdownButtonHideUnderline(
                            child: Obx(() => DropdownButton(
                                value: controller.size.value,
                                hint: Text(
                                  'Size',
                                  style: textTheme.labelSmall,
                                ),
                                items: ['XL', 'LG', 'MD', 'SM', 'XS']
                                    .map((e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e,
                                            style: textTheme.labelSmall)))
                                    .toList(),
                                onChanged: (v) {
                                  controller.size.value = v;
                                  // controller.update();
                                })),
                          ),
                        )
                      ],
                    ),
                    // const SizedBox(height: 12),
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: SizedBox(
                    //     width: 150,
                    //     height: 40,
                    //     child: AppButton(
                    //         padding: const EdgeInsets.all(8),
                    //         isActive: true,
                    //         onPressed: () {},
                    //         icon: const Icon(FlutterIcons.cart_mco),
                    //         value: 'Add to cart'),
                    //   ),
                    // ),
                    const SizedBox(height: 12),
                    Text('Variations',
                        style: textTheme.labelLarge!
                            .copyWith(color: ColorConstant.dark)),
                    const SizedBox(height: 4),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return GestureDetector(
                                onTap: () {
                                  carouselController.jumpToPage(i - 1);
                                  controller.activeIndex.value = i - 1;
                                },
                                child: Obx(() => Container(
                                    width: 50,
                                    height: 40,
                                    margin: const EdgeInsets.only(right: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        border: controller.activeIndex.value ==
                                                i - 1
                                            ? Border.all(
                                                color: ColorConstant.black,
                                                width: 2)
                                            : null,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text(
                                      '$i',
                                      style: textTheme.labelMedium,
                                    ))),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text('Product Details',
                        style: textTheme.labelLarge!
                            .copyWith(color: ColorConstant.dark)),
                    const SizedBox(height: 8),
                    ProductData(
                      data: [
                        ProductDataModel(
                            title: 'Manufacturer Name:',
                            value: 'Donald’s Wear Collection'),
                        ProductDataModel(
                            title: 'Manufacturer Name:',
                            value: 'Donald’s Wear Collection'),
                        ProductDataModel(
                            title: 'Manufacturer Name:',
                            value: 'Donald’s Wear Collection')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: AppButton(
                    padding: const EdgeInsets.all(12),
                    isActive: true,
                    color: Colors.pink[100],
                    onPressed: () {},
                    // icon: const Icon(FlutterIcons.money_bill_faw5s),
                    value: 'Buy Now'),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: AppButton(
                    padding: const EdgeInsets.all(12),
                    isActive: true,
                    onPressed: () {},
                    icon: const Icon(FlutterIcons.cart_mco),
                    value: 'Add to cart'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
