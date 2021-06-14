import 'package:flutter/material.dart';
import 'package:contact/viewModel/auth/register_auth.dart';
import '../../../viewModel/auth/register_auth.dart';


class FormFild extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormFild> {
  bool senha = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            //chamado do controller no viewModel
            controller: getName,
            decoration: InputDecoration(
                icon: Icon(Icons.person), hintText: 'Informe o nome'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            //chamado do controller no viewModel
            controller: getEmail,
            validator: validaEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(Icons.email), hintText: 'Informe o email'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: getSenha,
            validator: validaSenha,
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.vpn_key), hintText: 'Digite uma senha'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            //chamado do controller no viewModel
            controller: getSenha2,
            validator: validaSenha,
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.vpn_key), hintText: 'Confirme sua senha'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  checkColor: Colors.white,
                  value: senha,
                  onChanged: (value) {
                    setState(() {
                      senha = value;
                    });
                  }),
              Text(
                'Mostrar senha',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
