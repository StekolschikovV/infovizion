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
        '/': (context) => PageKpi(title: 'kpi'),
        '/chart': (context) => PageChart(title: 'chart',),
////        '/page2': (context) => DateTimeComboLinePointChart(),
      },
    );
  }
}

