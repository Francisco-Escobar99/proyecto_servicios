import 'package:flutter/material.dart';

import '../profile/Provider_/view_main_provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // ignore: prefer_final_fields
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
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
                      textAlign:
                          TextAlign.start, // Centra el texto a la izquierda
                      decoration: InputDecoration(
                        hintText: 'Usuario',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none, // Sin borde
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF), // Fondo blanco
                        hintStyle: const TextStyle(
                          color: Color(0xFF3B3936),
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 20),
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
                      obscureText:
                          !_isPasswordVisible, // Oculta o muestra el texto de la contraseña
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none, // Sin borde
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF), // Fondo blanco
                        hintStyle: const TextStyle(
                          color: Color(0xFF3B3936),
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 20),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordVisible
                              ? Icons.visibility_off
                              : Icons
                                  .visibility), // Cambia el icono según la visibilidad de la contraseña
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ViewMain()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        // ignore: deprecated_member_use
                        primary:
                            const Color(0xFF3B3936), // Color de fondo del botón
                      ),
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF), // Color de letra del botón
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
