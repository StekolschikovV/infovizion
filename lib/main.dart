import 'package:flutter/material.dart';
import './pages/chart.dart';
import './pages/kpi.dart';
import './pages/login.dart';
import './theme.dart';

void main() => runApp(MyApp());

const myPrimaryColor = const Color(0xFFE91E63);
final ThemeData myAppTheme = buildTheme();

ThemeData buildTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(
//    accentColor: mainColor,
    primaryColor: blackColor,
//      buttonColor: Colors.red,
//    backgroundColor: Colors.amber,
////    scaffoldBackgroundColor: Colors.black,
//    cardColor: Colors.blue,
//    textSelectionColor: Colors.brown,
//    errorColor:Colors.deepPurple,

  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
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


