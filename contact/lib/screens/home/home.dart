import 'dart:math';
import 'package:contact/screens/contactForm/newContact.dart';
import 'package:contact/shared/components/drawerMenu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final contacts = List<String>.generate(20, (index) => 'Contato ${index + 1}');
  var appBar = AppBar(
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
          children: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        ),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: DrawerHome(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.indigoAccent, Colors.blue],
        )),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LayoutBuilder(
              builder: (_, constraints) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  height: MediaQuery.of(context).size.height * .85,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(75.0))),
                  child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        title: Text(contacts[index]),
                        subtitle: Text('555-1234'),
                        trailing: Container(
                          width: 100,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.grey[400],
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.delete,
                                      color: Colors.grey[400]),
                                  onPressed: () {})
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => NewCtt()));
        },
      ),
    );
  }
}
