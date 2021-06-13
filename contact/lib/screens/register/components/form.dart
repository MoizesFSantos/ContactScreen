import 'package:flutter/material.dart';

class FormFild extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormFild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.person), hintText: 'Informe o nome'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.email), hintText: 'Informe o email'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.vpn_key), hintText: 'Digite uma senha'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.vpn_key), hintText: 'Confirme sua senha'),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
