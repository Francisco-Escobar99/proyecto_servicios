import '../entities/user_login.dart';
import '../repositories/auth_loginUser.dart';

class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<bool> execute(User user) async {
    return await _authRepository.login(user);
  }
}
