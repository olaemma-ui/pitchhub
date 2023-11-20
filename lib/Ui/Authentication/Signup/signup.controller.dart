import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/utils.dart';

class SignupController extends GetxController {
  bool isNewsLetter = false;
  bool isT$C = false;
  bool loading = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'firstName': {
        'value': firstNameController.text,
        'error': null,
        'required': true
      },
      'lastName': {
        'value': lastNameController.text,
        'error': null,
        'required': true
      },
      'phoneNumber': {
        'value': phoneController.text,
        'error': null,
        'required': true
      },
      'email': {'value': emailController.text, 'error': null, 'required': true},
      'password': {
        'value': passwordController.text,
        'error': null,
        'required': true
      },
      'confirm_password': {
        'value': confirmPasswordController.text,
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

  onTapNewsLetter() {
    isNewsLetter = !isNewsLetter;
    update();
  }

  onTapisT$C() {
    isT$C = !isT$C;
    update();
  }

  onTapSignup() async {
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
    if (valid) {
      // Call signup API
    }
    log('fields = $fields');
  }
}
