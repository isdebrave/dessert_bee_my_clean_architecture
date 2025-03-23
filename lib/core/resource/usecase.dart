import 'package:dessert_bee_my_clean_architecture/core/resource/model.dart';
import 'package:dessert_bee_my_clean_architecture/core/resource/repository.dart';
import 'package:dessert_bee_my_clean_architecture/core/resource/result/result.dart';

abstract class Usecase<T extends Repository> {
  Future<Result<Model>> call({required T repository});
}
