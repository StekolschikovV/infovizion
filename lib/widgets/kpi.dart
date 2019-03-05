import 'package:flutter/material.dart';

class Kpi {
  num width = 30;
  num height = 30;

  Kpi(BuildContext context){
    print('KPI');
  }

  Widget get() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color(0xFF00FF00),
//      width: MediaQuery.of(context).size.width,
      width: 30,
      height: 48.0,
    );

  }
}