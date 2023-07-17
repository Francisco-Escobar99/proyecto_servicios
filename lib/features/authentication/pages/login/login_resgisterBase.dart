import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_selectRole.dart';

class RegisterCustomer extends StatelessWidget {
  const RegisterCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xFFE5E5E5),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 37),
                    child: Text(
                      'Te damos la bienvenida...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      _responsiveWidth(context, 0.15),
                      _responsiveHeight(context, 0.03),
                      _responsiveWidth(context, 0.1),
                      0,
                    ),
                    child: Text(
                      'Cuéntanos de ti:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.04)),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      hintText: 'Nombre',
                      fillColor: HexColor('#FFFFFF'),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xFF3B3936),
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.02)),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      hintText: 'Apellidos',
                      fillColor: HexColor('#FFFFFF'),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xFF3B3936),
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.02)),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: HexColor('#FFFFFF'),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xFF3B3936),
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.02)),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      hintText: 'Numero de telefono',
                      fillColor: HexColor('#FFFFFF'),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xFF3B3936),
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.06)),
                  TextFormField(
                    obscureText: true, // Ocultar/ver contraseña
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      fillColor: HexColor('#FFFFFF'),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xFF3B3936),
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.02)),
                  TextFormField(
                    obscureText: true, // Ocultar/ver contraseña
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      hintText: 'Repetir contraseña',
                      fillColor: HexColor('#FFFFFF'),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xFF3B3936),
                        fontSize: _responsiveTextSize(context, 18),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: HexColor('#FFFFFF')),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          // Cambiar la visibilidad de la contraseña
                        },
                        child: const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.04)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 90),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login_selectRole()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: HexColor('#3B3936'),
                        // Color de fondo del botón
                        // ignore: deprecated_member_use
                        onPrimary: Colors.white,
                        // Color del texto del botón
                        textStyle: TextStyle(
                          fontSize: _responsiveTextSize(context, 17),
                          fontWeight: FontWeight.bold,
                        ),
                        minimumSize: Size(_responsiveWidth(context, 0.9),
                            _responsiveHeight(context, 0.07)),
                        // Ancho y alto mínimos del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: HexColor('#3B3936'),
                            // Color del borde del botón
                            width: 12,
                            // Ancho del borde del botón
                          ),
                        ),
                      ),
                      child: const Text('Registrarse'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  double _responsiveWidth(BuildContext context, double fraction) {
    return MediaQuery.of(context).size.width * fraction;
  }

  double _responsiveHeight(BuildContext context, double fraction) {
    return MediaQuery.of(context).size.height * fraction;
  }

  double _responsiveTextSize(BuildContext context, double size) {
    return size * MediaQuery.of(context).textScaleFactor;
  }
}
