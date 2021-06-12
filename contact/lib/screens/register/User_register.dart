import 'package:flutter/material.dart';
import 'components/form.dart';

class UserReg extends StatefulWidget {
  @override
  _UserRegState createState() => _UserRegState();
}

class _UserRegState extends State<UserReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.indigo[900], Colors.indigoAccent],
            ),
          ),
        ),
        elevation: 0.0,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .90,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.indigoAccent, Colors.blue],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                height: MediaQuery.of(context).size.height - 120.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(75.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    FormFild(),
                    SizedBox(
                      height: 17,
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save_alt),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Cadastrar',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
