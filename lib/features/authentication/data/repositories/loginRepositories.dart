import 'package:http/http.dart' as http;

class LoginRepository {
  Future<bool> login(String username, String password) async {
    final url = Uri.parse('https://spokda7of4.execute-api.us-east-1.amazonaws.com/auth-services/auth/login');

    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      // Autenticación exitosa
      return true;
    } else {
      // Error en la autenticación
      return false;
    }
  }
}
