import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/utils.dart';
import 'package:pitchub/api/authentication/login/login.service.dart';
import 'package:pitchub/app/app.locator.dart';
import 'package:pitchub/value_object/request_object/login_obj.dart';

class LoginController extends GetxController {
  bool loading = false;
  bool remberMe = false;
  final _loginService= locator<LoginService>();
  LoginObject _user = LoginObject();

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

  LoginObject get user => _user;

  void setUser(LoginObject user){
    _user=user;
  }

  void setEmail(String? email){
    setUser(user.copyWith(email: email));
  }

  void setPassword(String? password){
    setUser(user.copyWith(password: password));
  }

  @override
  void onInit() {
    initializeFields();
    super.onInit();
  }

  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;

  onTapLogin() async {
    loading = true;
    errorMessage.value = '';
    update();
    
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
    if (valid) {
      print("valid");
      // Call Login API

      final result = await _loginService.signin(user);

      result.fold((failure) {
        errorMessage.value = failure.prettyMessage;
        Get.snackbar("Error", failure.prettyMessage, backgroundColor: Colors.red);
        // print();
      }, (response) {
        Get.snackbar("Success", response.data!["message"], backgroundColor: Colors.green);
      });
      loading = false;
      update();
    }else{
      loading = false;
      update();
    }

    log('fields = $fields');
  }

  onTapRemberMe() {
    remberMe = !remberMe;
    update();
  }
}
