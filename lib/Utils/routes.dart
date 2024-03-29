import 'package:get/get.dart';
import 'package:pitchub/Ui/Authentication/Create%20New%20Password/create_new_password.binding.dart';
import 'package:pitchub/Ui/Authentication/Create%20New%20Password/create_new_password.ui.dart';

import 'package:pitchub/Ui/Authentication/ForgotPassword/forgot_password.ui.dart';
import 'package:pitchub/Ui/Authentication/Login/login.ui.dart';
import 'package:pitchub/Ui/Authentication/Otp/otp.binding.dart';
import 'package:pitchub/Ui/Authentication/Otp/otp.ui.dart';
import 'package:pitchub/Ui/Authentication/Signup/signup.ui.dart';
import 'package:pitchub/Ui/Dashboard/Cartegory/category.binding.dart';
import 'package:pitchub/Ui/Dashboard/My%20Orders/myOrders.binding.dart';
import 'package:pitchub/Ui/Dashboard/Procuct%20Details/productDetails.binding.dart';
import 'package:pitchub/Ui/Dashboard/Procuct%20Details/productDetails.ui.dart';
import 'package:pitchub/Ui/Dashboard/Products/products.binding.dart';
import 'package:pitchub/Ui/Profile/profile.binding.dart';
import 'package:pitchub/Ui/Success%20Screens/auth_success_screen.dart';
import 'package:pitchub/Ui/View/appView.binding.dart';
import 'package:pitchub/Ui/View/appView.ui.dart';
import 'package:pitchub/Ui/splash_screen.dart';

class AppRoute {
  static const String initialRoute = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String success = '/success';
  static const String forgotPassword = '/forgot_password';
  static const String createNewPassword = '/create_new_password';
  static const String otp = '/otp';
  static const String productDetailsPage = '/product/details';
  static const String appView = '/appView';

  static routes() {
    return [
      GetPage(
        name: initialRoute,
        page: () => const SplashScreen(),
        transition: Transition.circularReveal,
      ),
      GetPage(
        name: appView,
        page: () => const AppView(),
        bindings: [
          ProductsBinding(),
          CategoryPageBinding(),
          ProfileBinding(),
          MyOrdersBinding(),
        ],
        binding: AppViewBinding(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: productDetailsPage,
        page: () => ProductDetailsPage(),
        binding: ProductDetailsBinding(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: signup,
        page: () => const SignupView(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: login,
        page: () => const LoginView(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: forgotPassword,
        page: () => const ForgotPasswordView(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: createNewPassword,
        page: () => const CreateNewPasswordView(),
        binding: CreateNewPasswordBinding(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: otp,
        page: () => OTPView(),
        binding: OTPBinding(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: success,
        page: () => const AuthSuccessScreen(),
        transition: Transition.fadeIn,
      ),
    ];
  }
}
