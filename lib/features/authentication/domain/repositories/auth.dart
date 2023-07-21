import '../entities/user.dart';
abstract class AuthRepository {
  Future<bool> login(User user);
}
