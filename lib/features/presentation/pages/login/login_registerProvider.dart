// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../profile/Provider_/view_main_provider.dart';

class RegisterProvider extends StatefulWidget {
  const RegisterProvider({Key? key}) : super(key: key);

  @override
  _RegisterProviderState createState() => _RegisterProviderState();
}

class _RegisterProviderState extends State<RegisterProvider> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 37),
                  child: Text(
                    'Te damos la bienvenida',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 34, top: 37),
                  child: Text(
                    'Cuéntanos de tu negocio:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    hintText: 'Nombre del negocio',
                    fillColor: HexColor('#FFFFFF'),
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
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
                ), //////////////////////////////////////////////////////
                const SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'RFC',
                    fillColor: HexColor('#FFFFFF'),
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
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
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Seleccione una categoría',
                    fillColor: HexColor('#FFFFFF'),
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: HexColor('#FFFFFF')),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
                  style: const TextStyle(
                    fontFamily: 'IstokWeb',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Cuidado personal',
                      child: Text(
                        'Cuidado personal',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 71, 71, 71),
                        ),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Salud',
                      child: Text(
                        'Salud',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 71, 71, 71),
                        ),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Servicio vehicular',
                      child: Text(
                        'Servicio vehicular',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 71, 71, 71),
                        ),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    // Aquí se puede  manejar el cambio de valor seleccionado
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: _obscureText,
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    hintText: 'Especifica tu giro',
                    fillColor: HexColor('#FFFFFF'),
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
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
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: _obscureText,
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    fillColor: HexColor('#FFFFFF'),
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
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
                const SizedBox(height: 18),
                TextFormField(
                  obscureText: _obscureText,
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    hintText: 'Repetir contraseña',
                    fillColor: HexColor('#FFFFFF'),
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
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
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                //////////////////////////////////7
                const SizedBox(height: 18),
                Container(
                  margin: const EdgeInsets.only(
                      top:
                          20), // Agrega un margen superior para separar el botón del contenido anterior
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewMain()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#3B3936'),
                      onPrimary: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      minimumSize: const Size(360, 59),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: HexColor('#3B3936'),
                          width: 10,
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Registrarse')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
