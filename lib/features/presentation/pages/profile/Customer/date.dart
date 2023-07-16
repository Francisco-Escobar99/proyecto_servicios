import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'app_barCustomer.dart';

class DateHour extends StatefulWidget {
  const DateHour({Key? key}) : super(key: key);

  @override
  _DateHourState createState() => _DateHourState();
}

class _DateHourState extends State<DateHour> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = _dateFormat.format(picked); // Formatear la fecha
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _timeController.text = picked.format(context);
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 24),
              child: Text(
                'Elegir fecha y hora',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'istok_web',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Container(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => _selectDate(context),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(color: Color(0xFFFFFFFF)),
                          ),
                          shadowColor: Colors.transparent,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fecha',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 18,
                                fontFamily: 'istok_web',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF3B3936),
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: _dateController,
                        readOnly: true,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    const SizedBox(
                        height:
                            90), // Separación entre TextField y botón de hora
                    Container(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => _selectTime(context),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(color: Color(0xFFFFFFFF)),
                          ),
                          shadowColor: Colors.transparent,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hora',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 18,
                                fontFamily: 'istok_web',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF3B3936),
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: _timeController,
                        readOnly: true,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ViewMain()),
                        );*/
                      },
                      // ignore: sort_child_properties_last
                      child: const Text(
                        'Continuar',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'IstokWeb',
                          fontSize: 20.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF486966),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(321, 51),
                      ),
                    ),
                    const SizedBox(height: 30),
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
