import 'package:flutter/material.dart';
import '../login/login_welcome.dart';

class ViewMain extends StatefulWidget {
  @override
  _ViewMainState createState() => _ViewMainState();
}

class _ViewMainState extends State<ViewMain> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE5E5E5),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/logo.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Cuidado personal'),
              onTap: () {
                // Acción al seleccionar 'Cuidado personal'
              },
            ),
            ListTile(
              title: const Text('Salud'),
              onTap: () {
                // Acción al seleccionar 'Salud'
              },
            ),
            ListTile(
              title: const Text('Servicio vehicular'),
              onTap: () {
                // Acción al seleccionar 'Servicio vehicular'
              },
            ),
            ListTile(
              title: const Text('Asistencia del hogar'),
              onTap: () {
                // Acción al seleccionar 'Asistencia del hogar'
              },
            ),
          ],
        ),
      ),
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
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }
}
