import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pitchub/Utils/constants.dart';
import 'package:pitchub/Utils/enums.dart';

import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/animations.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';
import 'package:pitchub/Widgets/app_textfield.widget.dart';

import 'create_new_password.controller.dart';

class CreateNewPasswordView extends GetWidget<CreateNewPasswordController> {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.light,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          // leading: IconButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     icon: const Icon(CupertinoIcons.back)),
        ),
        body: GetBuilder<CreateNewPasswordController>(
          init: CreateNewPasswordController(),
          builder: (_) {
            return SizedBox(
              width: 500,
              child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppSlideAnimation(
                          animateFrom: AnimateFrom.top,
                          start: 1.5,
                          curve: Curves.bounceOut,
                          duration: 1000,
                          delay: 0,
                          child: Image.asset(
                            AppConstants.logo,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        AppSlideAnimation(
                          animateFrom: AnimateFrom.left,
                          duration: 1000,
                          start: 5.5,
                          child: Text(
                            'Create New Password',
                            style: textTheme.titleLarge,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.left,
                            duration: 600,
                            start: .5,
                            child: Text(
                              'Please, Enter a new and secure Password',
                              overflow: TextOverflow.clip,
                              style: textTheme.labelMedium!
                                  .copyWith(color: ColorConstant.dark),
                            )),
                        const SizedBox(
                          height: 32,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.left,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              controller: _.passwordController,
                              label: 'Password',
                              isPassword: true,
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              error: _.fields['password']!['error'],
                              placeholder: 'Enter new password',
                              keyboardType: TextInputType.visiblePassword,
                              regex: r'^[a-zA-Z0-9!@#$%^&\*]*$',
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.left,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              controller: _.confirmPasswordController,
                              label: 'Confirm Password',
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              isPassword: true,
                              error: _.fields['confirm_password']!['error'],
                              placeholder: 'Enter new password',
                              keyboardType: TextInputType.visiblePassword,
                              regex: r'^[a-zA-Z0-9!@#$%^&\*]*$',
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.bottom,
                            duration: 700,
                            start: 1.5,
                            child: AppButton(
                              isActive: true,
                              onPressed: () async {
                                _.update();
                                _.loading = true;
                                await _.onTapCreateNewPassword();
                                _.loading = false;
                                _.update();
                              },
                              value: 'Reset Password',
                            )),
                      ],
                    ),
                  )),
            );
          },
        ));
  }
}
