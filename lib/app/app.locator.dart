import 'package:get_it/get_it.dart';
import 'package:pitchub/api/authentication/signup/signup.service.dart';
import 'package:pitchub/api/authentication/login/login.service.dart';
import 'package:pitchub/service/network_service/network_service.dart';
import 'package:pitchub/service/network_service/network_service_impl.dart';

final locator = GetIt.I;

setUpLocator(){
  locator.registerLazySingleton <NetworkService>(() => NetworkServiceImpl());
  locator.registerLazySingleton <SignupService>(() => SignupService());
  locator.registerLazySingleton <LoginService>(() => LoginService());
}