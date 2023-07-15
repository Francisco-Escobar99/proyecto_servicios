import 'package:flutter/material.dart';
import 'app_barProvider.dart';
import 'view_main_provider.dart';

class service_create extends StatelessWidget {
  const service_create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: provider_appbar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 156.0, top: 16.0),
              child: Text(
                "usuario",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 31.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Agregue una descripcion de su servicio",
                  alignLabelWithHint: true,
                  filled: true,
                  fillColor: Color.fromARGB(255, 177, 177, 177),
                  labelStyle: TextStyle(color: Color(0xFF000000)),
                ),
                maxLines: 15,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 16.0,
                ),
                textAlignVertical: TextAlignVertical.top,
              ),
            ),
            const SizedBox(height: 240),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewMain()),
                  );
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Publicar servicio',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'IstokWeb',
                    fontSize: 20.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color(0xFF486966), // Color de fondo
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize: const Size(321, 51),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
