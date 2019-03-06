import 'package:flutter/material.dart';
import './pages/page2.dart';
import './pages/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'infovizion',
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(title: 'page 1'),
        '/page2': (context) => Page2(title: 'page 2'),
      },
    );
  }
}

