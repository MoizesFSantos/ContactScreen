import 'package:flutter/material.dart';

class DrawerHome extends StatefulWidget {
  @override
  _DrawerHomeState createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.indigo,Colors.indigoAccent, Colors.indigoAccent],
            )
                //color: Theme.of(context).primaryColor,
                ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
