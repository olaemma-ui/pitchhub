import 'package:get/get.dart';
import 'package:pitchub/api/authentication/signup/signup.model.dart';
import 'package:pitchub/api/authentication/signup/signup.service.dart';

class SignupController extends GetxController {
  final SignupService _signupService = Get.find();

  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;

  Future<void> signup(User user) async {
    isLoading.value = true;
    errorMessage.value = '';

    if (!isValidPassword(user.password)) {
      errorMessage.value = 'Invalid password. Please check requirements.';
      isLoading.value = false;
      return;
    }

    final result = await _signupService.signup(user);

    result.fold((failure) {
      isLoading.value = false;
      errorMessage.value = failure.prettyMessage;
    }, (response) {
      isLoading.value = false;
    });
  }

  bool isValidPassword(String password) {
    // - Minimum length of 8 characters
    // - At least one uppercase letter
    // - At least one lowercase letter
    // - At least one number
    // - At least one special character

    return true;
  }
}
