import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import './pages/page2.dart';
import './pages/page1.dart';
import './pages/test.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'infovizion',
      initialRoute: '/page2',
      routes: {
        '/': (context) => Page1(title: 'page 1'),
        '/page2': (context) => Page2(title: 'page 2',),
//        '/page2': (context) => DateTimeComboLinePointChart(),
      },
    );
  }
}

