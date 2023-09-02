// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pitchub/Utils/style.dart';

class AppButton extends StatelessWidget {
  final String? value;
  final bool isActive;
  final Function()? onPressed;
  final Widget? icon;
  final Color? color;
  const AppButton({
    Key? key,
    this.value,
    this.icon,
    this.color,
    required this.isActive,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 500,
      child: CupertinoButton(
        // disabledColor: ColorConstant.grey,
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
                  color: isActive ? ColorConstant.light : ColorConstant.dark),
            ),
          ],
        ),
      ),
    );
  }
}
