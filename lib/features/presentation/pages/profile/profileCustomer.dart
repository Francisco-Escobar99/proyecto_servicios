import 'package:flutter/material.dart';

import '../appBar/app_bar.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('• Cuidado personal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IstokWeb',
                    fontSize: 16.0,
                  )),
              onTap: () {
                // Acción al seleccionar 'Cuidado personal'
              },
            ),
            ListTile(
              title: const Text('• Salud',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IstokWeb',
                    fontSize: 16.0,
                  )),
              onTap: () {
                // Acción al seleccionar 'Salud'
              },
            ),
            ListTile(
              title: const Text('• Servicio vehicular',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IstokWeb',
                    fontSize: 16.0,
                  )),
              onTap: () {
                // Acción al seleccionar 'Servicio vehicular'
              },
            ),
            ListTile(
              title: const Text('• Asistencia del hogar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IstokWeb',
                    fontSize: 16.0,
                  )),
              onTap: () {
                // Acción al seleccionar 'Asistencia del hogar'
              },
            ),
          ],
        ),
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                "Mi cuenta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 18.0,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                        radius: 70,
                        backgroundImage: AssetImage('assets/perfilUsuario.png'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Nombre de usuario",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IstokWeb',
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Cliente",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IstokWeb',
                        fontSize: 18.0,
                        color: Color(0xFF707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
