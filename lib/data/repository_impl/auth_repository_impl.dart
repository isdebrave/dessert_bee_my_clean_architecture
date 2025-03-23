import 'package:dessert_bee_my_clean_architecture/data/data_source/remote/auth_data_source.dart';
import 'package:dessert_bee_my_clean_architecture/data/entity/auth/local_login_entity.dart';
import 'package:dessert_bee_my_clean_architecture/data/mapper/auth_mapper.dart';
import 'package:dessert_bee_my_clean_architecture/data/request_body/auth/local_login_request_body.dart';
import 'package:dessert_bee_my_clean_architecture/domain/model/auth/local_login_model.dart';
import 'package:dessert_bee_my_clean_architecture/domain/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<AuthRepository> authRepositoryProvider =
    Provider<AuthRepository>(
      (Ref ref) => AuthRepositoryImpl(api: ref.read(authApiProvider)),
    );

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.api});

  final AuthApi api;

  @override
  Future<LocalLoginModel> postDevLocalLogin({
    required LocalLoginRequestBody body,
  }) async {
    final LocalLoginEntity response = await api.postDevLocalLogin(body: body);

    return response.toModel();
  }
}
