import 'package:flutter/material.dart';

import 'package:pitchub/core/style.dart';


class AppTextButton extends StatelessWidget {
  final String? value;
  final bool isActive;
  final Function()? onPressed;
  final Widget? icon;
  final Color? color;
  const AppTextButton({
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
    return TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(width: 1, color: ColorConstant.dark))),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            const SizedBox(
              width: 8,
            ),
            Text(
              value ?? '',
              style: textTheme.labelLarge!.copyWith(color: ColorConstant.dark),
            ),
          ],
        ));
  }
}
