import 'package:contact/shared/alerts/ok_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/api/signUp/sign_up.dart';
import '../../screens/log/login.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final _registerName = TextEditingController();
final _registerEmail = TextEditingController();
final _registerSenha = TextEditingController();
final _registerSenha2 = TextEditingController();

final getName = _registerName;
final getEmail = _registerEmail;
final getSenha = _registerSenha;
final getSenha2 = _registerSenha2;

//validação de campos
String validaEmail(String texto) {
  if (texto.isEmpty) {
    return "formato inválido";
  }
  return null;
}

//validação de senha
String validaSenha(String texto) {
  if (texto.isEmpty || texto.length < 6) {
    return "Digite uma senha com 6 caracteres";
  }
  return null;
}

void doSignUp() {
  //garantindo que os só confirme se os dois campos de senhas forem iguais
  if (formKey.currentState.validate()) {
    SignUpSerService().signup(getEmail.text, getSenha.text);
    
  }
}

