import 'package:dartz/dartz.dart';
import 'package:pitchub/api/authentication/signup/signup.model.dart';
import 'package:pitchub/api/constant.dart';
import 'package:pitchub/app/app.locator.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/service/network_service/network_service.dart';
import 'package:pitchub/value_object/response_object/base/base_response.dart';

class SignupService {

  final _networkService = locator<NetworkService>();

  Future<Either<Failure, ResponseObject<Map<String, dynamic>>>> signup(User user) async {
    final uri = Uri.parse('${ApiConstant.BASE_URL}/auth/signup');
    final result = await _networkService.postUri<Map<String, dynamic>>(uri, body: user.toMap());
    return result;
  }
}
