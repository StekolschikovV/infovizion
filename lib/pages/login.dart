import 'package:flutter/material.dart';
import 'package:infovizion/theme.dart';

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
            ],
          ),
          SizedBox(height: 120.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              filled: true,
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: greenColor, width: 2),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: greenColor, width: 2),
              ),

            ),
          ),
          SizedBox(height: 12.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              filled: true,
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: greenColor, width: 2),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: greenColor, width: 2),
              ),
            ),
            obscureText: true,
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.pushNamed(context, '/kpi');
                },
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                color: greenColor,
                colorBrightness:  Brightness.dark,
                child: Text('NEXT'),
                onPressed: () {
                  Navigator.pushNamed(context, '/kpi');
                },
                elevation: 8.0,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              )
            ],
          )
        ],
      )),
    );
  }
}
