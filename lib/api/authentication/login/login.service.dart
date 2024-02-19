import 'package:dartz/dartz.dart';
import 'package:pitchub/api/constant.dart';
import 'package:pitchub/app/app.locator.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/service/network_service/network_service.dart';
import 'package:pitchub/value_object/request_object/login_obj.dart';
import 'package:pitchub/value_object/response_object/base/base_response.dart';

class LoginService {

  final _networkService = locator<NetworkService>();

  Future<Either<Failure, ResponseObject<Map<String, dynamic>>>> signin(LoginObject user) async {
    final uri = Uri.parse('${ApiConstant.BASE_URL}/auth/login');
    final result = await _networkService.postUri<Map<String, dynamic>>(uri, body: user.toMap());
    print(result);
    return result;
  }


}