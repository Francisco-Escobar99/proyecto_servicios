import 'package:flutter/material.dart';
import 'app_barProvider.dart';

class ViewMain extends StatefulWidget {
  @override
  _ViewMainState createState() => _ViewMainState();
}

class _ViewMainState extends State<ViewMain> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFE5E5E5),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 0),
          Container(
            padding: const EdgeInsets.all(22.0),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Buscar...',
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Icon(Icons.search),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 239),
            child: Text(
              'Servicios del día',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'istok_web',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 165),
          const Text(
            'Vista de servicios',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
