import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      // Get.offAllNamed('/signup');
      Get.toNamed('/login');
      timer.cancel();
    });
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () {
              Get.toNamed('/login');
            },
            child: Image.asset(AppConstants.textLogo)),
      ),
    );
  }
}
