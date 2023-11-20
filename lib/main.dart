import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/routes.dart';
import 'package:pitchub/theme/theme.dart';

// log(String value) {
//   if (kDebugMode) log(value);
// }

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
      
      initialRoute: AppRoute.initialRoute,
      getPages: AppRoute.routes(),
      // home: ,
    );
  }
}
