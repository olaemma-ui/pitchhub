// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pitchub/Utils/style.dart';

class ProductDataModel {
  String? title;
  String? value;
  ProductDataModel({
    this.title,
    this.value,
  });
}

class ProductData extends StatelessWidget {
  const ProductData({super.key, required this.data});
  final List<ProductDataModel> data;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
        children: data
            .map((e) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  color:
                      data.indexOf(e).isEven ? ColorConstant.transLight : null,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(e.title ?? '',
                              style: textTheme.labelSmall!
                                  .copyWith(fontWeight: FontWeight.bold))),
                      Expanded(
                          flex: 1,
                          child: Text(e.value ?? '',
                              style: textTheme.labelSmall!
                                  .copyWith(fontWeight: FontWeight.normal))),
                    ],
                  ),
                ))
            .toList());
  }
}
