import 'package:dessert_bee_my_clean_architecture/data/data_source/remote/auth_data_source.dart';
import 'package:dessert_bee_my_clean_architecture/data/entity/auth/local_login_entity.dart';
import 'package:dessert_bee_my_clean_architecture/data/request_body/auth/local_login_request_body.dart';

class AuthMockApi implements AuthApi {
  @override
  Future<LocalLoginEntity> postDevLocalLogin({
    required LocalLoginRequestBody body,
  }) {
    return Future<LocalLoginEntity>(
      () => LocalLoginEntity(
        accessToken: 'joefjwioqjfgiowjfiojweiofj',
        refreshToken: 'jeoiwqhfewguhwqhefuuiqwhfeiuhwe',
        tokenType: 'string',
        expiresIn: 9007199254740991,
        userUuid: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        email: 'test@example.com',
        nickname: 'Patrick',
        profileImageUrl: 'string',
        preferenceSet: true,
      ),
    );
  }
}
