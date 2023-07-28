// main.dart - Archivo principal

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_movil/features/authentication/pages/login/login_welcome.dart';
import './features/authentication/pages/login/login_view.dart';
import './features/authentication/data/repositories/user_repository_impl.dart';
import './features/authentication/pages/user_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio(); // Crea una instancia de Dio

    UserRepositoryImpl userRepository = UserRepositoryImpl(dio);
    UserProvider userProvider = UserProvider(userRepository);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: userProvider),
      ],
      child: const MaterialApp(
        title: 'My App',
        home: LoginWelcome(),
      ),
    );
  }
}
