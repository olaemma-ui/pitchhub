import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pitchub/Utils/constants.dart';
import 'package:pitchub/Utils/enums.dart';

import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/animations.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';

class AuthSuccessScreen extends StatelessWidget {
  const AuthSuccessScreen({super.key});

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
        body: SizedBox(
          width: 500,
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    AppSlideAnimation(
                      animateFrom: AnimateFrom.top,
                      start: 1.5,
                      curve: Curves.bounceOut,
                      duration: 1000,
                      delay: 0,
                      child: Image.asset(
                        AppConstants.successGif,
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
                        'Password Changed',
                        textAlign: TextAlign.center,
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
                          'Please  Login with your new Email Address and Password',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: textTheme.labelMedium!
                              .copyWith(color: ColorConstant.dark),
                        )),
                    const SizedBox(
                      height: 32,
                    ),
                    AppSlideAnimation(
                        animateFrom: AnimateFrom.bottom,
                        duration: 700,
                        start: 1.5,
                        child: AppButton(
                          isActive: true,
                          onPressed: () {
                            Get.offAllNamed('/login');
                          },
                          value: 'Back to Login',
                        )),
                  ],
                ),
              )),
        ));
  }
}
