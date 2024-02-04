import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/utils.dart';

class LoginController extends GetxController {
  bool loading = false;
  bool remberMe = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'email': {'value': emailController.text, 'error': null, 'required': true},
      'password': {
        'value': passwordController.text,
        'error': null,
        'required': true
      },
    };
  }

  @override
  void onInit() {
    initializeFields();
    super.onInit();
  }

  onTapLogin() async {
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
    if (valid) {
      // Call Login API
    }
    log('fields = $fields');
  }

  onTapRemberMe() {
    remberMe = !remberMe;
    update();
  }
}
