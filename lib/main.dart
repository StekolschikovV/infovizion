import 'package:flutter/material.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
import './pages/chart.dart';
import './pages/kpi.dart';
//import './pages/test.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'infovizion',
      initialRoute: '/',
      routes: {
//        '/': (context) => PageKpi(title: 'kpi'),
        '/': (context) => LoginPage(),
//        '/chart': (context) => PageChart(title: 'chart',),
////        '/page2': (context) => DateTimeComboLinePointChart(),
      },
    );
  }
}


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
                  SizedBox(height: 20.0),
                  Text('Test')
                ],
              ),
              SizedBox(height: 120.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  filled: true
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true
                ),
                obscureText: true,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('CANCEL'),
                    onPressed: (){

                    },
                  ),
                  RaisedButton(
                    child: Text('NEXT'),
                    onPressed: (){

                    },
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}