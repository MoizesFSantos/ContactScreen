import 'package:flutter/material.dart';


// o modelo dos contatos 
// os @required obriga que os dados nao sejam nulos

class Contact {
  final String id;
  final String nome;
  final String email;
  final String cep;
  final String cidade;
  final String telefone;
  final String celular;

  const Contact({
    this.id, 
    @required this.nome, 
    this.email, 
    @required this.cep, 
    @required this.cidade,
    this.telefone, 
    this.celular
    });
}
