import 'package:flutter/material.dart';
import './theme.dart';

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
            child: Image.asset('assets/login_icon.png'),
            decoration: BoxDecoration(
              color: blackColor,
            ),
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
          ),
          ListTile(
            title: Text('KPI'),
            onTap: () {
              Navigator.pushNamed(context, '/kpi');
            },
          ),
          ListTile(
            title: Text('Charts'),
            onTap: () {
              Navigator.pushNamed(context, '/chart');
            },
          ),
          ListTile(
            title: Text('Выход'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
