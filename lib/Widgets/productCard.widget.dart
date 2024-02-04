import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';

class AppProductCard extends StatelessWidget {
  final Image image;
  final String name;
  final String price;
  final String details;
  final bool? showAddToCart;
  final double? imageHeight;
  final Function()? onTap;
  const AppProductCard(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.details,
      this.onTap,
      this.showAddToCart,
      this.imageHeight});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: 100,
              height: imageHeight ?? 80,
              decoration: BoxDecoration(
                // color: ColorConstant.blue,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: image.image),
              ),
            ),
            const SizedBox(height: 8),
            Text(name,
                style: textTheme.labelMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            const SizedBox(height: 4),
            Text(
              details,
              style: textTheme.labelSmall!.copyWith(color: ColorConstant.dark),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(price,
                      style: textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(1000),
                      child: const Icon(FlutterIcons.ios_heart_empty_ion,
                          color: ColorConstant.dark),
                    )),
              ],
            ),
            const SizedBox(height: 8),
            if (showAddToCart ?? false)
              AppButton(
                  padding: const EdgeInsets.all(0),
                  isActive: true,
                  onPressed: () {},
                  icon: const Icon(FlutterIcons.cart_mco),
                  value: 'Add to cart'),
          ],
        ),
      ),
    );
  }
}
