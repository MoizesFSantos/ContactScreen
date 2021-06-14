import 'package:flutter/material.dart';
import 'package:contact/viewModel/auth/login_auth.dart';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(32.0),
  );
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: getLogin,
              validator: validaLogin,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
                labelText: 'Digite o seu email',
                border: border,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: getLoginSenha,
              validator: validaPass,
              keyboardType: TextInputType.text,
              obscureText: obscureText,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  // alterar para visivel a senha
                  child: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blue,
                  ),
                ),
                labelText: 'Digite a sua senha',
                border: border,
              ),
            ),
          ],
        ),
      
    );
  }
}
