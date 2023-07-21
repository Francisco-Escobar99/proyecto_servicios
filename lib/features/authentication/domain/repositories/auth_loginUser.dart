import '../entities/user_login.dart';
abstract class AuthRepository {
  Future<bool> login(User user);
}
