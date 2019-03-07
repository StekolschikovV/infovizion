import 'package:flutter/material.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
import './pages/chart.dart';
import './pages/kpi.dart';
import './pages/login.dart';
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
        '/': (context) => LoginPage(),
        '/kpi': (context) => KpiPage(title: 'kpi'),
        '/chart': (context) => ChartPage(title: 'chart',),
      },
    );
  }
}

final ThemeData myAppTheme = buildTheme();

ThemeData buildTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: Colors.black38
  );
}


