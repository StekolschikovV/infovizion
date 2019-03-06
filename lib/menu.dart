import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  Menu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('KPI'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Charts'),
            onTap: () {
              Navigator.pushNamed(context, '/chart');
            },
          ),

        ],
      ),
    );
  }
}