import 'package:flutter/material.dart';
import 'login_registerProvider.dart';
import '../profile/Customer/view_main_customer.dart';

class Login_selectRole extends StatefulWidget {
  @override
  _Login_selectRole createState() => _Login_selectRole();
}

class _Login_selectRole extends State<Login_selectRole> {
  final _formKey = GlobalKey<FormState>();
  String? selectedRole;
  bool isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFFE5E5E5), // Fondo de color
        child: Form(
          key: _formKey,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    left: constraints.maxWidth * 0.09,
                    top: constraints.maxHeight * 0.12,
                    child: const Text(
                      'Te damos la bienvenida...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: constraints.maxWidth * 0.15,
                    top: constraints.maxHeight * 0.2,
                    child: const Text(
                      'Cuentanos, ¿Quién quieres ser?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: constraints.maxWidth * 0.07,
                    top: constraints.maxHeight * 0.36,
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: constraints.maxWidth * 0.86,
                      height: constraints.maxHeight * 0.09,
                      child: DropdownButtonFormField<String>(
                        value: selectedRole,
                        //itemHeight: constraints.maxHeight * 0.09,
                        items: [
                          DropdownMenuItem<String>(
                            value: 'cliente',
                            child: Text(
                              'Cliente',
                              style: TextStyle(
                                fontSize: 14,
                                color: selectedRole == 'cliente'
                                    ? const Color(0xFF3B3936)
                                    : const Color.fromARGB(255, 141, 141, 141),
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'proveedor',
                            child: Text(
                              'Proveedor',
                              style: TextStyle(
                                fontSize: 14,
                                color: selectedRole == 'proveedor'
                                    ? const Color(0xFF3B3936)
                                    : const Color.fromARGB(255, 141, 141, 141),
                              ),
                            ),
                          ),
                        ],
                        onChanged: (String? value) {
                          setState(() {
                            selectedRole = value;
                            isButtonEnabled = value != null;
                          });
                        },
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 33,
                        dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                        style: const TextStyle(
                          fontFamily: 'Istok Web',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3B3936),
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              //simetria de los roles dentro del drowdowMenu.
                              vertical: 2.0,
                              horizontal: 16.0),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Roles',
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: constraints.maxWidth * 0.07,
                    top: constraints.maxHeight * 0.77,
                    child: SizedBox(
                      height: constraints.maxHeight * 0.06,
                      width: constraints.maxWidth * 0.86,
                      child: ElevatedButton(
                        onPressed: isButtonEnabled
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  if (selectedRole == 'cliente') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ViewMainCustomer(),
                                      ),
                                    );
                                  } else if (selectedRole == 'proveedor') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterProvider(),
                                      ),
                                    );
                                  }
                                }
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: isButtonEnabled
                              ? const Color(0xFF3B3936)
                              : Colors.transparent,
                        ),
                        child: const Text(
                          'Siguiente',
                          style: TextStyle(
                            fontFamily: 'Istok Web',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
