import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../domain/repositories/auth.dart';
import '../../domain/entities/user.dart';

class AuthDataRepository implements AuthRepository {
  final Dio dio = Dio();

  @override
  Future<bool> login(User user) async {
    const String loginUrl =
        'https://spokda7of4.execute-api.us-east-1.amazonaws.com/auth-services/auth/login';

    try {
      final response = await dio.post(
        loginUrl,
        data: {
          'email': user.email,
          'password': user.password,
        },
      );

      return response.statusCode == 200;
    } catch (error) {
      if (kDebugMode) {
        print('Error al realizar la petición POST: $error');
      }
      return false;
    }
  }
}
