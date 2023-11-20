import 'package:flutter/material.dart';
import 'package:pitchub/Ui/Dashboard/My%20Orders/model/myOrder.model.dart';
import 'package:pitchub/constants/constants.dart';
import 'package:pitchub/core/style.dart';

class MyOrderWidget extends StatelessWidget {
  const MyOrderWidget({super.key, required this.orderModel});

  final MyOrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: orderModel.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Column(
              //   children: [
              //   ],
              // ),

              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.asset(
                  Assets.banner,
                  width: 104,
                  height: 94,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderModel.name,
                      // "Handmade Classic Luxury Men Leather Shoe",
                      style: textTheme.labelLarge,
                      overflow: TextOverflow.clip,
                    ),
                    const SizedBox(height: 4),
                    Text("#${orderModel.price}", style: textTheme.labelLarge),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Qty: ${orderModel.quantity}",
                            style: textTheme.bodySmall),
                        if (orderModel.statusText != null)
                          Badge(
                            backgroundColor: orderModel.status == null
                                ? ColorConstant.warningAncent
                                : orderModel.status!
                                    ? ColorConstant.greenAcent
                                    : ColorConstant.redAncent,
                            textColor: orderModel.status == null
                                ? ColorConstant.warning
                                : orderModel.status!
                                    ? ColorConstant.green
                                    : ColorConstant.red,
                            label: Text(orderModel.statusText!),
                            largeSize: 20,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                        if (orderModel.onDelete != null)
                          TextButton(
                            onPressed: orderModel.onDelete,
                            child: Text(
                              'REMOVE',
                              style: textTheme.labelMedium!
                                  .copyWith(color: ColorConstant.red),
                            ),
                          )
                      ],
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
