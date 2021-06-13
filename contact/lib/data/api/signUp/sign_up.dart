import 'dart:convert';
import 'package:contact/shared/constants/routes.dart';
import 'package:http/http.dart' as http;

// essa é a parte lógica de autenticação do signUp, o cadastro de usuário
class SignUpSerService {
  signup(String email, String password) async {
    http.Response response = await http.post(
      Routes.urlSingUp,
      // os parametros que o firebase solicita
      body: json.encode(
          {"email": email, "password": password, "returnSecureToken": true}),
    );
  }
}
