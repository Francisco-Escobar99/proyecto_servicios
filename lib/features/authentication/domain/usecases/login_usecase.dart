import '../../domain/repositories/auth.dart';
import '../../domain/entities/user.dart';

class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<bool> execute(User user) async {
    return await _authRepository.login(user);
  }
}
