// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pitchub/Utils/enums.dart';
import 'package:pitchub/core/style.dart';

class AppTextField extends StatefulWidget {
  String? label;
  String? placeholder;
  TextEditingController? controller;
  String? regex;
  final int? maxLength;
  final int maxLines;
  final TextInputType? keyboardType;
  final AnimateFrom? animateFrom;
  final bool? isPassword;
  String? error;
  final Function(String? value)? onChange;

  AppTextField({
    Key? key,
    this.label,
    this.placeholder,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
    this.regex,
    this.animateFrom,
    this.isPassword,
    this.error,
    this.controller,
    this.onChange
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label ?? '',
          style: textTheme.labelSmall,
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          controller: widget.controller,
          onChanged: widget.onChange,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          obscureText: (widget.isPassword ?? false) ? !showPassword : false,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          inputFormatters: widget.regex == null
              ? null
              : [
                  FilteringTextInputFormatter.allow(RegExp(widget.regex!)),
                ],
          cursorColor: ColorConstant.brand,
          keyboardType: widget.keyboardType,
          // validator: widget.validator,
          decoration: InputDecoration(
              suffix: !(widget.isPassword ?? false)
                  ? null
                  : InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        showPassword = !showPassword;
                        setState(() {});
                        log('show = $showPassword');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          showPassword
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_slash,
                          size: 18,
                        ),
                      )),
              counter: null,
              counterText: null,
              contentPadding: const EdgeInsets.all(12.0),
              hintText: widget.placeholder,
              hintStyle:
                  textTheme.labelSmall!.copyWith(color: ColorConstant.dark),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: widget.error == null
                          ? ColorConstant.grey
                          : ColorConstant.red,
                      width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: ColorConstant.brand,
                  ))),
        ),
        if (widget.error != null) ...[
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.error ?? '',
            style: textTheme.labelSmall!.copyWith(color: Colors.red),
          ),
        ]
      ],
    );
  }
}
