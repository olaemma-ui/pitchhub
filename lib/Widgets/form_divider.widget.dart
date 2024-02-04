import 'package:pitchub/core/style.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  final String text;
  final Color? dividerColor;
  final Color? textColor;
  const FormDivider(
      {super.key, required this.text, this.dividerColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: dividerColor ?? ColorConstant.grey,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: textTheme.labelSmall!
              .copyWith(color: textColor ?? ColorConstant.grey),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Divider(
            color: dividerColor ?? ColorConstant.grey,
          ),
        )
      ],
    );
  }
}
