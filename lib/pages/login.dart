import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.asset('assets/login_icon.png'),
//                  SizedBox(height: 10.0),
//                  Text('Test')
            ],
          ),
          SizedBox(height: 120.0),
          TextField(
            decoration: InputDecoration(labelText: 'Username', filled: true),
          ),
          SizedBox(height: 12.0),
          TextField(
            decoration: InputDecoration(labelText: 'Password', filled: true),
            obscureText: true,
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.pushNamed(context, '/kpi');
                },
              ),
              RaisedButton(
                child: Text('NEXT'),
                onPressed: () {
                  Navigator.pushNamed(context, '/kpi');
                },
              )
            ],
          )
        ],
      )),
    );
  }
}
