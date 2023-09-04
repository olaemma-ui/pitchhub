import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/App/Authentication/ForgotPassword/forgot_password.ui.dart';
import 'package:pitchub/App/Authentication/Login/login.ui.dart';
import 'package:pitchub/App/Authentication/Otp/otp.binding.dart';
import 'package:pitchub/App/Authentication/Otp/otp.ui.dart';
import 'package:pitchub/App/Authentication/Signup/signup.ui.dart';
import 'package:pitchub/App/Success%20Screens/auth_success_screen.dart';
import 'package:pitchub/App/splash_screen.dart';
import 'package:pitchub/Utils/theme.dart';

log(String value) {
  if (kDebugMode) log(value);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme(),
      initialRoute: '/',

      getPages: [
        GetPage(
            name: '/',
            page: () => const SplashScreen(),
            transition: Transition.circularReveal),
        GetPage(
          name: '/signup',
          page: () => const SignupView(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/login',
          page: () => const LoginView(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/forgot_password',
          page: () => const ForgotPasswordView(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/otp',
          page: () => OTPView(),
          binding: OTPBinding(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/auth_success',
          page: () => const AuthSuccessScreen(),
          transition: Transition.fadeIn,
        ),
      ],
      // home: ,
    );
  }
}
