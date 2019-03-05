import 'package:flutter/material.dart';

class Kpi {

  double width = 30;
  double height;

  int colorRed;
  int colorGreen;
  int colorBlue;
  double colorOpacity;

  Kpi(BuildContext context,
      {this.colorRed: 63, this.colorGreen: 191, this.colorBlue: 63, this.colorOpacity: 1, this.height = 150}) {
    width = MediaQuery.of(context).size.width;
  }

  Widget get() {
    return Container(
      margin: const EdgeInsets.all(10.0),
//      color: const Color('0xFF00FF00'),
      color: Color.fromRGBO(colorRed, colorGreen, colorBlue, colorOpacity),
//      width: MediaQuery.of(context).size.width,
      width: width,
      height: height,
    );
  }
}
