// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pitchub/core/style.dart';

class AppButton extends StatelessWidget {
  final String? value;
  final bool isActive;
  final Function()? onPressed;
  final Widget? icon;
  final Color? color;
  final Color? valueColor;
  final EdgeInsets? padding;
  final bool? border;
  const AppButton({
    Key? key,
    this.value,
    this.icon,
    this.color,
    this.valueColor,
    required this.isActive,
    required this.onPressed,
    this.padding,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 500,
      decoration: border?? false ? BoxDecoration(
          border: Border.all(width: 1, color: ColorConstant.dark),
          borderRadius: BorderRadius.circular(8)) : null,
      child: CupertinoButton(
        // disabledColor: ColorConstant.grey,

        padding: padding,
        onPressed: onPressed,
        color: color ?? (isActive ? ColorConstant.brand : ColorConstant.grey),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Text(
              value ?? '',
              style: textTheme.labelMedium!.copyWith(
                  color: isActive ? valueColor ?? ColorConstant.light : valueColor ?? ColorConstant.dark),
            ),
          ],
        ),
      ),
    );
  }
}
