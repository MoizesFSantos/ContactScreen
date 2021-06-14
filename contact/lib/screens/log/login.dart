import 'package:contact/screens/log/components/input.dart';
import 'package:contact/screens/register/User_register.dart';
import 'package:contact/viewModel/auth/login_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool stillConnect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.indigoAccent, Colors.blue],
      )),
      child: Form(
        key: loginKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextInput(),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: stillConnect,
                      onChanged: (value) {
                        setState(() {
                          stillConnect = value;
                        });
                      }),
                  Text(
                    'Manter-se conectado',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  loginOK(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    SizedBox(width: 10),
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Divider(
                height: 10,
                thickness: 2,
              ),
              Text(
                'Ainda não tem uma conta ?',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w200,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueGrey[300])),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => UserReg()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_to_home_screen_rounded),
                    SizedBox(width: 10),
                    Text(
                      'Cadastre-se',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
