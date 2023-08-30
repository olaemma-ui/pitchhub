import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pitchub/Utils/enums.dart';
import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/animations.dart';

class AppTextField extends StatelessWidget {
  String? label;
  String? placeholder;
  TextEditingController controller;
  String regex;
  final int? maxLength;
  final int maxLines;
  final TextInputType? keyboardType;
  final AnimateFrom? animateFrom;

  AppTextField({
    Key? key,
    this.label,
    this.placeholder,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
    required this.regex,
    this.animateFrom,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppSlideAnimation(
      animateFrom: animateFrom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label ?? '',
            style: textTheme.labelSmall,
          ),
          const SizedBox(
            height: 4,
          ),
          TextFormField(
            controller: controller,
            maxLines: maxLines,
            maxLength: maxLength,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus!.unfocus();
            },
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(regex)),
            ],
            cursorColor: ColorConstant.brand,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                counter: null,
                counterText: null,
                contentPadding: const EdgeInsets.all(12.0),
                hintText: placeholder,
                hintStyle:
                    textTheme.labelSmall!.copyWith(color: ColorConstant.dark),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        BorderSide(color: ColorConstant.grey, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: ColorConstant.brand,
                    ))),
          )
        ],
      ),
    );
  }
}
