import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:pitchub/constants/constants.dart';
import 'package:pitchub/core/style.dart';
import 'package:pitchub/Utils/enums.dart';
import 'package:pitchub/Widgets/animations.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';

import 'otp.controller.dart';

class OTPView extends GetWidget<OTPController> {
  OTPView({super.key});
  final TextTheme textTheme = Theme.of(Get.context!).textTheme;

  pinPut() {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: textTheme.labelMedium,
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstant.grey),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: ColorConstant.brand),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      validator: (s) {
        controller.otpController.text = s ?? '';
        controller.hasError = !(s == '2222');
        log('hasError = ${controller.hasError} value = ${controller.otpController.text}');
        return s == '2222' ? null : 'Invalid Verification Code';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      errorText: controller.fields['number']!['error'],
      errorTextStyle: textTheme.labelMedium!.copyWith(color: ColorConstant.red),
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.light,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
        ),
        body: GetBuilder<OTPController>(
          init: OTPController(),
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
                            'Verification Code',
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
                              'We have sent an acess code to your Email Address',
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
                            child: pinPut()),
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
                                await _.onTapOTP();
                                _.loading = false;
                                _.update();
                              },
                              value: 'Verify',
                            )),
                      ],
                    ),
                  )),
            );
          },
        ));
  }
}
