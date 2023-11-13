import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/Utils/style.dart';

class AppCategories extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final Function()? onTap;
  const AppCategories(
      {super.key,
      required this.icon,
      required this.color,
      required this.text,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: onTap,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(8)),
              child: Icon(
                icon,
                color: ColorConstant.light,
                // size: 10,
              ),
            ),
          ),
          Text(
            text,
            style: textTheme.labelSmall,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
