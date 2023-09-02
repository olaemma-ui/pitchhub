import 'package:get/get.dart';

class AppUtils {
  static bool validate({required Map<String, Map<String, dynamic>> data}) {
    bool valid = true;
    data.forEach((key, value) {
      if (data[key]!['required'] && (data[key]!['value'] as String).isEmpty) {
        data[key]!['error'] = 'This field is required';
      } else {
        if (key == 'email') {
          if (!(data[key]!['value'] as String).isEmail) {
            data[key]!['error'] = 'Enter a valid E-mail address';
            valid = false;
          }
        }
        if (key.toLowerCase().contains('phone')) {
          if (!(data[key]!['value'] as String).isPhoneNumber) {
            data[key]!['error'] = 'Enter a valid E-mail address';
            valid = false;
          }
        }
        if (key.toLowerCase().contains('password')) {
          if (!RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~_-]).{8,}$')
              .hasMatch((data[key]!['value'] as String))) {
            data[key]!['error'] =
                'Password must contain one of each \n(A-Z, a-z, 0-9, [!@#\$&*~_-])';
            valid = false;
          }
        }
        if (key.toLowerCase().contains('name')) {
          if (!RegExp(r'\w').hasMatch((data[key]!['value'] as String))) {
            data[key]!['error'] = 'Enter a valid Name';
            valid = false;
          }
        }
      }
    });

    return valid;
  }
}
