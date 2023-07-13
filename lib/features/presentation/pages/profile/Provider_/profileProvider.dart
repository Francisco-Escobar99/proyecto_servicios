// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'app_barProvider.dart';
import 'create_service.dart';

class ProviderProfile extends StatelessWidget {
  const ProviderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: provider_appbar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text(
                '• Cuidado personal',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 16.0,
                ),
              ),
              onTap: () {
                // Acción al seleccionar 'Cuidado personal'
              },
            ),
            ListTile(
              title: const Text(
                '• Salud',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 16.0,
                ),
              ),
              onTap: () {
                // Acción al seleccionar 'Salud'
              },
            ),
            ListTile(
              title: const Text(
                '• Servicio vehicular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 16.0,
                ),
              ),
              onTap: () {
                // Acción al seleccionar 'Servicio vehicular'
              },
            ),
            ListTile(
              title: const Text(
                '• Asistencia del hogar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 16.0,
                ),
              ),
              onTap: () {
                // Acción al seleccionar 'Asistencia del hogar'
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
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
                    const ClipOval(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                        radius: 70,
                        backgroundImage: AssetImage('assets/perfilUsuario.png'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Nombre de usuario",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IstokWeb',
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Proveedor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IstokWeb',
                        fontSize: 18.0,
                        color: Color(0xFF707070),
                      ),
                    ),
                    const SizedBox(height: 49),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            "Cambiar nombre",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IstokWeb',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lock),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            "Cambiar foto de la cuenta",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IstokWeb',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lock),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            "Cambiar contraseña",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IstokWeb',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lock),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            "Cambiar direccion",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IstokWeb',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lock),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            "Añadir numero de telefono",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IstokWeb',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lock),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => service_create()),
                              );
                            },
                            child: const Text(
                              "Crear un servicio",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'IstokWeb',
                                fontSize: 18.0,
                              ),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                  side: const BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            "Ver historial de los clientes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IstokWeb',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
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
