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
//            child: Text('Drawer Header'),
            child: Image.network(
              'https://infovizion.ru/uploads/s/t/6/p/t6pofgmaftdy/img/EOTTQBvK.png',
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
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