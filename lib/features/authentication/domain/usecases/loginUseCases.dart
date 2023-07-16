import '../../data/repositories/loginRepositories.dart';

class LoginUseCase {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  Future<bool> login(String username, String password) {
    return _repository.login(username, password);
  }
}
