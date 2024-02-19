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

import 'login.controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
        body: GetBuilder<LoginController>(
          init: LoginController(),
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
                          animateFrom: AnimateFrom.left,
                          duration: 1000,
                          start: 5.5,
                          child: Text(
                            'Welcome Back',
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
                              'Enter your registered Email Address and Password',
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
                              controller: _.emailController,
                              label: 'Email Address',
                              onChange: _.setEmail,
                              // validator: (value) {
                              //   return value.isValid(isRequired: true);
                              // },
                              error: _.fields['email']!['error'],
                              placeholder: 'example@domain.com',
                              keyboardType: TextInputType.emailAddress,
                              regex: r'^(([\w-0-9^<>()[\]\\.,;:\s@\"]{1,}))$',
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        AppSlideAnimation(
                            animateFrom: AnimateFrom.right,
                            duration: 700,
                            start: 1.5,
                            child: AppTextField(
                              controller: _.passwordController,
                              onChange: _.setPassword,
                              label: 'Password',
                              isPassword: true,
                              placeholder: 'Password',
                              error: _.fields['password']!['error'],
                              keyboardType: TextInputType.visiblePassword,
                              regex: r'^[a-zA-Z0-9!@#$%^&\*]*$',
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Checkbox(
                                        activeColor: ColorConstant.brand,
                                        value: _.remberMe,
                                        onChanged: (value) {
                                          _.onTapRemberMe();
                                        }),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _.onTapRemberMe();
                                      },
                                      child: Text(
                                        'Rember me',
                                        overflow: TextOverflow.clip,
                                        style: textTheme.labelSmall,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed('/forgot_password');
                              },
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: Text(
                                  'Forgot password ? ',
                                  overflow: TextOverflow.clip,
                                  style: textTheme.labelSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                                  onPressed: _.onTapLogin,
                                  value: !_.loading? 'Sign in': null,
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
                                const FormDivider(text: 'Or sign in with'),
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
                              Get.toNamed('/signup');
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
                                    'Don\'t have an account? ',
                                    overflow: TextOverflow.clip,
                                    style: textTheme.labelSmall,
                                  ),
                                  Text(
                                    'Sign IUp',
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
