import 'package:flutter/material.dart';
import 'package:proyecto_movil/features/authentication/pages/profile/Provider_/business_view.dart';
import 'app_barCustomer.dart';
import '../../login/login_welcome.dart';
import '../Customer/date.dart';

class ViewMainCustomer extends StatelessWidget {
  const ViewMainCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            buildDrawerListItem('Cuidado personal'),
            buildDrawerListItem('Salud'),
            buildDrawerListItem('Servicio vehicular'),
            buildDrawerListItem('Asistencia del hogar'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(44),
              child: Row(
                children: [
                  buildServiceButton(
                    context,
                    'User.png',
                    'Barber Alfa',
                    'Cuidado personal',
                    'Estilista',
                    '4.2',
                  ),
                  const SizedBox(width: 30),
                  buildServiceButton(
                    context,
                    'User2.png',
                    'C. D. Bere',
                    'Salud',
                    'Dentista',
                    '4.8',
                  ),
                ],
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginWelcome()),
                );
              },
              child: const Text('Cerrar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DateHour()),
                );
              },
              child: const Text('date'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerListItem(String title) {
    return ListTile(
      title: Text(
        '• $title',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'IstokWeb',
          fontSize: 16.0,
        ),
      ),
      onTap: () {
        // Acción al seleccionar el elemento del Drawer
      },
    );
  }

  Widget buildServiceButton(
    BuildContext context,
    String imageName,
    String title,
    String category,
    String role,
    String rating,
  ) {
    return InkWell(
      onTap: () {
        // Navegar a la otra vista aquí
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BusinessView()),
        );
      },
      child: SizedBox(
        width: 125,
        height: 190,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Positioned(
              left: 29,
              top: 15,
              child: Image.asset('assets/$imageName'),
            ),
            Positioned(
              left: 24,
              top: 102,
              child: SizedBox(
                width: 86,
                height: 52,
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 0,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Heebo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 21,
                      child: Text(
                        category,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 11,
                          fontFamily: 'Heebo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 36,
                      child: Text(
                        role,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 11,
                          fontFamily: 'Heebo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 46,
              top: 161,
              child: SizedBox(
                width: 43,
                height: 17,
                child: Stack(
                  children: [
                    Positioned(
                      left: 18,
                      top: 0,
                      child: SizedBox(
                        width: 25,
                        height: 17,
                        child: Text(
                          rating,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Heebo',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Image.asset('assets/Star.png'),
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
