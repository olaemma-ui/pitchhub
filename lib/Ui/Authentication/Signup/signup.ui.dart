import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/constants/constants.dart';
import 'package:pitchub/core/style.dart';
import 'package:pitchub/Utils/enums.dart';
import 'package:pitchub/Widgets/animations.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';
import 'package:pitchub/Widgets/app_text_button.widget.dart';
import 'package:pitchub/Widgets/app_textfield.widget.dart';
import 'package:pitchub/Widgets/form_divider.widget.dart';

import 'signup.controller.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
        body: GetBuilder<SignupController>(
          init: SignupController(),
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
                            Assets.logo,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        AppSlideAnimation(
                          animateFrom: AnimateFrom.bottom,
                          duration: 1000,
                          start: 5.5,
                          child: Text(
                            'Create an Account',
                            style: textTheme.titleLarge,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.bottom,
                            duration: 600,
                            start: 1.5,
                            child: Text(
                              'Create an account to start using Mypichhub',
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
                              // controller: _.emailController,
                              label: 'First Name',
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              error: _.fields['firstName']!['error'],
                              placeholder: 'Enter your first name',
                              keyboardType: TextInputType.name,
                              regex: r'^[A-Za-z]{0,}$',
                              onChange: _.setFirstname,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.left,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              // controller: _.emailController,
                              label: 'Last Name',
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              error: _.fields['lastName']!['error'],
                              placeholder: 'Enter your last name',
                              keyboardType: TextInputType.name,
                              regex: r'[A-Za-z]{0,}$',
                              onChange: _.setLastname,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.right,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              // controller: _.emailController,
                              label: 'Phone Number',
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              error: _.fields['phoneNumber']!['error'],
                              placeholder: '000 0000 000',
                              keyboardType: TextInputType.phone,
                              // regex: r'[0-9]?{1,11}$',
                              maxLength: 11,
                              onChange: _.setPhoneNumber,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.right,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              // controller: _.emailController,
                              label: 'Email Address',
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              error: _.fields['email']!['error'],
                              placeholder: 'example@domain.com',
                              keyboardType: TextInputType.emailAddress,
                              regex: r'^(([\w-0-9^<>()[\]\\.,;:\s@\"]{1,}))$',
                              onChange: _.setEmail,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.left,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              // controller: _.passwordController,
                              label: 'Password',
                              isPassword: true,
                              placeholder: 'Password',
                              error: _.fields['password']!['error'],
                              keyboardType: TextInputType.visiblePassword,
                              regex: r'^[a-zA-Z0-9!@#$%^&\*]*$',
                              onChange: _.setPassword,
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
                              isPassword: true,
                              error: _.fields['confirm_password']!['error'],
                              placeholder: 'Confirm Password',
                              keyboardType: TextInputType.visiblePassword,
                              regex: r'^[a-zA-Z0-9!@#$%^&\*]*$',
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.bottom,
                            duration: 700,
                            start: 1.5,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Checkbox(
                                          activeColor: ColorConstant.brand,
                                          value: _.isNewsLetter,
                                          onChanged: (value) {
                                            _.onTapNewsLetter();
                                          }),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            _.onTapNewsLetter();
                                          },
                                          child: Text(
                                            'I agree to receive mypitchhub Newsletter via Email.',
                                            overflow: TextOverflow.clip,
                                            style: textTheme.labelSmall,
                                          )),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Checkbox(
                                          activeColor: ColorConstant.brand,
                                          value: _.isT$C,
                                          onChanged: (value) {
                                            _.onTapisT$C();
                                          }),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            _.onTapisT$C();
                                          },
                                          child: Wrap(
                                            children: [
                                              Text(
                                                'I have read and agreed to the ',
                                                overflow: TextOverflow.clip,
                                                style: textTheme.labelSmall,
                                              ),
                                              Text(
                                                'Terms of Use',
                                                overflow: TextOverflow.clip,
                                                style: textTheme.labelSmall!
                                                    .copyWith(
                                                        color: ColorConstant
                                                            .brand),
                                              ),
                                              Text(
                                                ' and ',
                                                overflow: TextOverflow.clip,
                                                style: textTheme.labelSmall,
                                              ),
                                              Text(
                                                'Privacy Policy',
                                                overflow: TextOverflow.clip,
                                                style: textTheme.labelSmall!
                                                    .copyWith(
                                                        color: ColorConstant
                                                            .brand),
                                              ),
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 24,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.bottom,
                            duration: 1000,
                            start: 1.5,
                            child: Column(
                              children: [
                                AppButton(
                                  isActive: !_.loading,
                                  onPressed: _.onTapSignup,
                                  value: !_.loading? 'Create Account': null,
                                  icon: const SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: ColorConstant.brand,
                                    )
                                  ),
                                ),
                                const SizedBox(height: 24),
                                const FormDivider(text: 'Or sign up with'),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppTextButton(
                                        isActive: true,
                                        onPressed: () {},
                                        color: ColorConstant.light,
                                        icon: Image.asset(
                                          Assets.facebook,
                                          width: 30,
                                          height: 30,
                                        ),
                                        value: 'Facebook',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: AppTextButton(
                                        isActive: true,
                                        onPressed: () {},
                                        color: ColorConstant.light,
                                        icon: Image.asset(
                                          Assets.google,
                                          width: 30,
                                          height: 30,
                                        ),
                                        value: 'Google',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        Align(
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                runAlignment: WrapAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account? ',
                                    overflow: TextOverflow.clip,
                                    style: textTheme.labelSmall,
                                  ),
                                  Text(
                                    'Sign In',
                                    overflow: TextOverflow.clip,
                                    style: textTheme.labelSmall!
                                        .copyWith(color: ColorConstant.brand),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          },
        ));
  }
}
