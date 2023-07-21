import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../profile/Customer/view_main_customer.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final dio = Dio();

    // URL de tu endpoint para iniciar sesión
    const String loginUrl =
        'https://spokda7of4.execute-api.us-east-1.amazonaws.com/auth-services/auth/login';

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await dio.post(
        loginUrl,
        data: {
          'email': _emailController.text,
          'password': _passwordController.text,
        },
      );

      setState(() {
        _isLoading = false;
      });

      // Verificar aquí la respuesta del servidor y realizar acciones en consecuencia

      // Por ejemplo, si el inicio de sesión es exitoso, navegamos a la pantalla principal del usuario
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ViewMainCustomer()),
        );
      } else {
        // Mostrar un mensaje de error o realizar otras acciones
        // Por ejemplo, mostrar un diálogo de error
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Error de inicio de sesión'),
              content:
                  const Text('Credenciales inválidas. Inténtalo de nuevo.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar'),
                ),
              ],
            ),
          );
        }
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      // Manejo de errores, muestra una notificación o mensaje al usuario
      if (kDebugMode) {
        print('Error al realizar la petición POST: $error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFFE5E5E5), // Fondo de color
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                const Positioned(
                  left: 27,
                  top: 53,
                  child: Text(
                    'Te damos la bienvenida...',
                    style: TextStyle(
                      fontFamily: 'Istok Web',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: -35,
                  top: 86,
                  child: Image.asset(
                    'assets/logo.png',
                    width: constraints.maxWidth + 70,
                    height: constraints.maxHeight * 0.3,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: constraints.maxHeight * 0.46,
                  child: SizedBox(
                    height: 52,
                    width: constraints.maxWidth - 40,
                    child: TextField(
                      controller: _emailController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        hintStyle: const TextStyle(
                          color: Color(0xFF3B3936),
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 42.0),
                Positioned(
                  left: 20,
                  top: constraints.maxHeight * 0.58,
                  child: SizedBox(
                    height: 52,
                    width: constraints.maxWidth - 40,
                    child: TextField(
                      controller: _passwordController,
                      textAlign: TextAlign.start,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        hintStyle: const TextStyle(
                          color: Color(0xFF3B3936),
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: constraints.maxHeight * 0.9,
                  child: SizedBox(
                    height: 43,
                    width: constraints.maxWidth - 40,
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : _login,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: const Color(0xFF3B3936),
                      ),
                      child: _isLoading
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            )
                          : const Text(
                              'Iniciar sesión',
                              style: TextStyle(
                                fontFamily: 'Istok Web',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
