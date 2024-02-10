import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/utils.dart';
import 'package:pitchub/api/authentication/signup/signup.model.dart';
import 'package:pitchub/api/authentication/signup/signup.service.dart';
import 'package:pitchub/app/app.locator.dart';

class SignupController extends GetxController {
  bool isNewsLetter = false;
  bool isT$C = false;
  bool loading = false;
  User _user = User();
  final _signupService= locator<SignupService>();

  User get user => _user;

  void setUser(User user){
    _user=user;
  }

  setFirstname(String? name){
    setUser(user.copyWith(firstName: name));
  }

  setLastname(String? name){
    setUser(user.copyWith(lastName: name));
  }

  setEmail(String? email){
    setUser(user.copyWith(email: email));
  }

  setPhoneNumber(String? phoneNumber){
    setUser(user.copyWith(phoneNumber: phoneNumber));
  }

  setPassword(String? password){
    setUser(user.copyWith(password: password));
  }

  setUserType(String? userType){
    setUser(user.copyWith(userType: "Customer"));
  }

  setAgreeToTerm(bool? agreeToTerm){
    setUser(user.copyWith(agreeToTerm: true));
  }

  final TextEditingController confirmPasswordController =
      TextEditingController();

  Map<String, Map<String, dynamic>> fields = {};

  initializeFields() {
    fields = {
      'firstName': {
        'value': user.firstName,
        'error': null,
        'required': true
      },
      'lastName': {
        'value': user.lastName,
        'error': null,
        'required': true
      },
      'phoneNumber': {
        'value': user.phoneNumber,
        'error': null,
        'required': true
      },
      'email': {'value': user.email, 'error': null, 'required': true},
      'password': {
        'value': user.password,
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

  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;

  Future<void> onTapSignup() async {
    loading = true;
    errorMessage.value = '';
    update();
    
    initializeFields();
    bool valid = AppUtils.validate(data: fields);
      if (valid) {
        // Call signup API
        _user = user.copyWith(agreeToTerm: true, userType: "Customer");
        final result = await _signupService.signup(user);

        result.fold((failure) {
          errorMessage.value = failure.prettyMessage;
          Get.snackbar("Error", failure.prettyMessage, backgroundColor: Colors.red);
        }, (response) {
          Get.snackbar("Success", response.data!["message"], backgroundColor: Colors.green);
        });

      }
      loading = false;
      update();
      log('fields = $fields');
    }

}
