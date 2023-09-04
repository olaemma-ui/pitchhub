import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/utils.dart';
import 'package:pitchub/main.dart';

class OTPController extends GetxController {
  bool loading = false;
  bool hasError = true;

  final TextEditingController otpController = TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'email': {'value': otpController.text, 'error': null, 'required': true},
    };
  }

  @override
  void onInit() {
    initializeFields();
    super.onInit();
  }

  onTapOTP() async {
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
    // log('fields = $fields');
    if (valid) {
      // Call OTP API
      Get.toNamed('/auth_success');
    }
  }
}
