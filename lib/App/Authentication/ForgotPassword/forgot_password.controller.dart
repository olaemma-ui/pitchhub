import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/routes.dart';
import 'package:pitchub/Utils/utils.dart';
// import 'package:pitchub/main.dart';

class ForgotPasswordController extends GetxController {
  bool loading = false;

  final TextEditingController emailController = TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'email': {'value': emailController.text, 'error': null, 'required': true},
    };
  }

  @override
  void onInit() {
    initializeFields();
    super.onInit();
  }

  onTapForgotPassword() async {
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
    log('valid = $valid');
    log('fields = $fields');
    if (valid) {
      // Call ForgotPassword API
      Get.toNamed(AppRoute.otp);
    }
  }
}
