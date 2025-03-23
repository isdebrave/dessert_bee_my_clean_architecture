import 'package:dessert_bee_my_clean_architecture/core/resource/repository.dart';
import 'package:dessert_bee_my_clean_architecture/data/request_body/auth/local_login_request_body.dart';
import 'package:dessert_bee_my_clean_architecture/domain/model/auth/local_login_model.dart';

abstract class AuthRepository extends Repository {
  /// [Dev 로그인(domain)](https://api.desserbee.com/swagger-ui/index.html#/Authentication/devlogin)
  Future<LocalLoginModel> postDevLocalLogin({
    required LocalLoginRequestBody body,
  });
}
