// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pitchub/Utils/style.dart';

class AppButton extends StatelessWidget {
  final String? value;
  final bool isActive;
  final int maxLength;
  final int maxLines;
  final Function()? onPressed;
  final Widget? icon;
  const AppButton({
    Key? key,
    this.value,
    this.icon,
    required this.isActive,
    required this.onPressed,
    this.maxLength = 0,
    this.maxLines = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 500,
      child: CupertinoButton(
        onPressed: onPressed,
        color: isActive ? ColorConstant.brand : ColorConstant.grey,
        child: Text(
          value ?? '',
          style: textTheme.labelMedium!.copyWith(
              color: isActive ? ColorConstant.light : ColorConstant.dark),
        ),
      ),
    );
  }
}
