import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/utils.dart';
import 'package:pitchub/main.dart';

class CreateNewPasswordController extends GetxController {
  bool loading = false;

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'password': {'value': passwordController.text, 'error': null, 'required': true},
      'confirm_password': {'value': confirmPasswordController.text, 'error': null, 'required': true},
    };
  }

  @override
  void onInit() {
    initializeFields();
    super.onInit();
  }

  onTapCreateNewPassword() async {
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
    // log('fields = $fields');
    if (valid) {
      // Call CreateNewPassword API
      Get.toNamed('/otp');
    }
  }
}
