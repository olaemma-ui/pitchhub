import 'package:flutter/material.dart';

class AppSeparator extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Color color;
  final Color leadingColor;
  final String trailingText;
  const AppSeparator(
      {super.key,
      required this.title,
      this.onTap,
      required this.color,
      required this.trailingText,
      required this.leadingColor});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title,
                style: textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: leadingColor)),
          ),
          GestureDetector(
              onTap: onTap,
              child: Text(
                trailingText,
                style: textTheme.labelSmall,
              ))
        ],
      ),
    );
  }
}
