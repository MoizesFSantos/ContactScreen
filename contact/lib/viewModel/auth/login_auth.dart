import 'package:flutter/material.dart';
import 'package:contact/data/api/signIn/login.dart';
import 'package:contact/shared/alerts/login_fail.dart';
import '../../screens/home/home.dart';

final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
final _loginEmail = TextEditingController();
final _loginSenha = TextEditingController();

final getLogin = _loginEmail;
final getLoginSenha = _loginSenha;

String validaLogin(String texto) {
  if (texto.isEmpty) {
    return "email inválido";
  }
  return null;
}

String validaPass(String texto) {
  if (texto.isEmpty || texto.length < 6) {
    return "Senha inválida";
  }
  return null;
}

void loginOK(BuildContext context) async {
  if (loginKey.currentState.validate()) {
    LoginService().login(getLogin.text, getLoginSenha.text);
    _mellon(context);
  } else {
    alert(
      context,'login invalido'
    );
  }
}

//diga amigo e entre
_mellon(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (BuildContext context) => Home()));
}
