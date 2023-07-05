import 'package:flutter/material.dart';

import '../login/login_welcome.dart';

class ViewMain extends StatelessWidget {
  // const ViewMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Vista de servicios',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginWelcome()),
                );
              },
              child: Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }
}
