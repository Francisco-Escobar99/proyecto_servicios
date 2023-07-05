import 'package:flutter/material.dart';

import 'login_register.dart';
import 'login_view.dart';

class LoginWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFFE5E5E5), // Fondo de color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              'assets/logo.png',
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );},
              // ignore: sort_child_properties_last
              child: const Text(
                'Iniciar sesión',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'IstokWeb',
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFF3B3936), // Color de fondo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: const Size(321, 43),
              ),
            ),
            const SizedBox(height: 45.0), // Espacio de 45 entre los botones
            ElevatedButton(
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginRegister()),
                );},
              // ignore: sort_child_properties_last
              child: const Text(
                'Crear una cuenta',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'IstokWeb',
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFF3B3936), // Color de fondo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: const Size(321, 43),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
