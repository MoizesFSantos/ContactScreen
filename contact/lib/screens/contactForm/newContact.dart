import 'package:contact/shared/components/drawerMenu.dart';
import 'package:flutter/material.dart';

class NewCtt extends StatefulWidget {
  @override
  _NewCttState createState() => _NewCttState();
}

class _NewCttState extends State<NewCtt> {
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
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(Icons.save_alt_outlined), onPressed: () {})
              ],
            ),
          )
        ],
        title: Text('Novo Contato'),
      ),
      backgroundColor: Color(0xFF536DFE),
      drawer: DrawerHome(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75.0),
                  )),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 22),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person), hintText: 'Informe o nome'),
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: 'Informe o email')),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.add_box_sharp),
                        hintText: 'Informe o CEP'
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
