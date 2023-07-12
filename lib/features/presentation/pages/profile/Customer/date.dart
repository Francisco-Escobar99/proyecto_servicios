import 'package:flutter/material.dart';

class dateHour extends StatelessWidget {
  const dateHour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                "Elegir fecha y hora",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IstokWeb',
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      print("Fecha seleccionada: $selectedDate");
                    }
                  });
                },
                child: const Text("Seleccionar fecha"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
