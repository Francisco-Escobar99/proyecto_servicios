import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dio/dio.dart';
import 'login_selectRole.dart';

class RegisterBase extends StatefulWidget {
  const RegisterBase({Key? key}) : super(key: key);

  @override
  _RegisterBaseState createState() => _RegisterBaseState();
}

class _RegisterBaseState extends State<RegisterBase> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  late bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _lastnameController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

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
                    controller: _nameController,
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
                    controller: _lastnameController,
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
                    controller: _emailController,
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
                  SizedBox(height: _responsiveHeight(context, 0.06)),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    controller: _passwordController,
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
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsiveHeight(context, 0.02)),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    controller: _repeatPasswordController,
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
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
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
                        _registerUser();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: HexColor('#3B3936'),
                        textStyle: TextStyle(
                          fontSize: _responsiveTextSize(context, 17),
                          fontWeight: FontWeight.bold,
                        ),
                        minimumSize: Size(_responsiveWidth(context, 0.9),
                            _responsiveHeight(context, 0.07)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: HexColor('#3B3936'),
                            width: 12,
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

  // Método para realizar la petición POST
  void _registerUser() async {
    String name =
        _nameController.text; // Obtén el valor del nombre del TextFormField
    String lastName = _lastnameController
        .text; // Obtén el valor del apellido del TextFormField
    String email =
        _emailController.text; // Obtén el valor del email del TextFormField
    String password = _passwordController.text;
    String repeatPassword = _repeatPasswordController.text;

    if (password == repeatPassword) {
      // Las contraseñas son iguales, realiza la petición POST
      try {
        var response = await Dio().post(
            'https://spokda7of4.execute-api.us-east-1.amazonaws.com/auth-services/auth/register',
            data: {
              'email': email,
              'password': password,
              'name': name,
              'last_name': lastName,
              'type_users_id': 2,
            });
            
        // Aquí puedes manejar la respuesta del servidor si es necesario
        print('Respuesta del servidor: ${response.data}');
        print('Respuesta del servidor: ${response.statusCode}');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login_selectRole()),
        );
      } catch (e) {
        // Manejo de errores en la petición
        print('Error en la petición: $e');
      }
    } else {
      // Las contraseñas no son iguales, muestra un mensaje de error
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Las contraseñas ingresadas no coinciden.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
