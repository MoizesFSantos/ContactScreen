import 'dart:convert';
import 'package:contact/shared/constants/routes.dart';
import 'package:http/http.dart' as http;

class LoginService {
  login(String email, String password) async {
    http.Response response = await http.post(
      Routes.urlSignin,
      // os parametros que o firebase solicita
      body: json.encode(
          {"email": email, "password": password, "returnSecureToken": true}),
    );
    
    print(response.body);
  }
}
