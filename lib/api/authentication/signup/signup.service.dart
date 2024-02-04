import 'package:dartz/dartz.dart';
import 'package:pitchub/api/authentication/signup/signup.model.dart';
import 'package:pitchub/api/constant.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/service/network_service/network_service.dart';
import 'package:pitchub/value_object/response_object/base/base_response.dart';

class SignupService {
  final NetworkService _networkService;

  SignupService(this._networkService);

  Future<Either<Failure, ResponseObject<User>>> signup(User user) async {
    final uri = Uri.parse('${ApiConstant.BASE_URL}/api/signup');
    final result = await _networkService.postUri<User>(uri, body: user.toJson());
    return result;
  }
}
