import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/user_login.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../domain/repositories/auth_loginUser.dart';

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
      Fluttertoast.showToast(
        msg: 'Bienvenido',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      print(response.statusCode);
      return response.statusCode == 200;
    } catch (error) {
      if (kDebugMode) {
        print('Error al realizar la petición POST: $error');
      }
      return false;
    }
  }
}
