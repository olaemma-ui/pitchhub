import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Get.offAllNamed('/signup');
      timer.cancel();
    });
    return Scaffold(
      body: Center(
        child: Image.asset(AppConstants.textLogo),
      ),
    );
  }
}
