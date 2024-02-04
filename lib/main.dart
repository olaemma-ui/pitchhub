import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/routes.dart';
import 'package:pitchub/app/app.locator.dart';
import 'package:pitchub/service/localstorage_service/local_storage_service.dart';
import 'package:pitchub/theme/theme.dart';

// log(String value) {
//   if (kDebugMode) log(value);
// }

Future<void> main() async {
  setUpLocator();
  await LocalStorageService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme(),
      title: 'MyPitchHub',
      initialRoute: AppRoute.initialRoute,
      getPages: AppRoute.routes(),
    );
  }
}
