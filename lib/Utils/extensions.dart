import 'package:flutter/material.dart';

extension ColorFormatter on String {
  hex() => Color(int.parse(replaceAll('#', '0XFF')));
}

extension LateStringExtension on String? {
  isValid({bool? isRequired}) {
    if (isRequired ?? false) {
      if (this == null) {
        return 'This field is required';
      }
      if (this!.isEmpty) {
        return 'This field is required';
      }
    }
  }
}


