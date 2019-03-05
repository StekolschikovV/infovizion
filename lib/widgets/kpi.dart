import 'package:flutter/material.dart';

class Kpi {
  double width = 30;
  double height;

  int colorRed;
  int colorGreen;
  int colorBlue;
  double colorOpacity;

  Icon firstLineIcon;
  String firstLineText;

  String midLineTextLeft;
  String midLineTextRight;

  String lastLineTextLeft;
  String lastLineTextRight;

  var textStyle = new TextStyle(
    fontSize: 20.0,
    color: Colors.white,
  );
  var textBigStyle = new TextStyle(
    fontSize: 25.0,
    color: Colors.white,
  );

  Kpi(
    BuildContext context, {
    this.colorRed: 63,
    this.colorGreen: 191,
    this.colorBlue: 63,
    this.colorOpacity: 1,
    this.height = 150,
    firstLineIconPram = Icons.add,
    this.firstLineText = 'firstLineText',
    this.midLineTextLeft = '',
    this.midLineTextRight = 'midLineTextRight',
    this.lastLineTextLeft = 'lineLineTextLeft',
    this.lastLineTextRight = 'lineLineTextRight',
  }) {
    width = MediaQuery.of(context).size.width;
    firstLineIcon = Icon(firstLineIconPram, color: Colors.white,);
  }

  Widget get() {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
      padding: const EdgeInsets.all(10.0),
      color: Color.fromRGBO(colorRed, colorGreen, colorBlue, colorOpacity),
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[firstLineIcon, Text(firstLineText, style: textStyle)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text(midLineTextLeft, style: textStyle), Text(midLineTextRight, style: textBigStyle,)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(lastLineTextLeft, style: textStyle),
              Text(lastLineTextRight, style: textStyle)
            ],
          )
        ],
      ),
    );
  }
}
