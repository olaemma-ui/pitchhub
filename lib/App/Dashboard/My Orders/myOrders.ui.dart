import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/App/Dashboard/My%20Orders/model/myOrder.model.dart';
import 'package:pitchub/App/Dashboard/My%20Orders/myOrders.controller.dart';
import 'package:pitchub/App/Dashboard/My%20Orders/widget/myOrder.widget.dart';
import 'package:pitchub/Utils/style.dart';

class MyOrdersView extends GetWidget<MyOrdersController> {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: GetBuilder<MyOrdersController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TabBar(
                        labelColor: ColorConstant.dark,
                        indicatorColor: ColorConstant.brand,
                        indicatorSize: TabBarIndicatorSize.tab,
                        physics: const AlwaysScrollableScrollPhysics(),
                        isScrollable: true,
                        // padding: EdgeInsets.zero,
                        tabs: [
                          Text('All'),
                          Text('Pending'),
                          Text('Completed'),
                          Text('Canceled'),
                        ]),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(FlutterIcons.ios_options_ion))
                ],
              ),
              Expanded(
                child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Completed',
                              status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Pending',
                              // status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Canceled',
                              status: false,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Pending',
                              // status: true,
                              id: '0',
                              name: 'Ok Product (Jean Trouser)',
                              price: '12,000',
                              quantity: 1,
                              total: '10,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Pending',
                              // status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Completed',
                              status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Pending',
                              // status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Canceled',
                              status: false,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Completed',
                              status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Pending',
                              // status: true,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                          MyOrderWidget(
                            orderModel: MyOrderModel(
                              statusText: 'Canceled',
                              status: false,
                              id: '0',
                              name: 'Luis Vuiton Ladies Bag',
                              price: '30,000',
                              quantity: 1,
                              total: '30,000',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                      // Text('Filter'),
                    ]),
              ),
            ],
          ),
        );
      }),
    );
  }
}
