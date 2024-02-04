import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/routes.dart';
import 'package:pitchub/Utils/utils.dart';

class OTPController extends GetxController {
  bool loading = false;
  bool hasError = true;

  final TextEditingController otpController = TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'number': {'value': otpController.text, 'error': null, 'required': true},
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
    log('fields = $fields');
    if (valid) {
      // Call OTP API
      Get.toNamed(AppRoute.createNewPassword);
    }
  }
}
