import 'package:flutter/material.dart';
//import 'package:json_parser/json_parser.dart';
//import 'package:json_parser/reflectable.dart';
//import 'kpi.reflectable.dart';
//import './dataType.dart';
import 'dart:async';
import 'dart:io';
//import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
//import 'package:infovizion/widgets/dataType.dart';

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

  var data;

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
      this.data,
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


//  String test = '[{"name": "John Smith", "email": "john@example.com"},  {"name": "John ", "email": "john@example.com"}]';
//  Map ss = jsonDecode(test)[0];
//  print(ss['name']);

//    List dataList = jsonDecode(test);

//    dataList.forEach((e){
//      print(e['name']);
//    });

//    Map<String, dynamic> user = jsonDecode('{"name": "John Smith", "email": "john@example.com"}');
//    Map<String, dynamic> user = jsonDecode();

//    print('Howdy, ${user['name']}!');
//    print('We sent the verification link to ${user['email']}.');

//    print('---------------');
//    var myThing = (jsonDecode(test) as List).map((e) {
////      if(e is String){
////        print(e);
////        new MyClass(e.toString());
//        new MyClass(e.toString());
////      }
//
//      return e;
//    }).toList();
//
////    MyClass c = new MyClass.fromJson(responsePayloadFromServer);
//    MyClass person = jsonDecode('{"id": 1, "email": "John Doe"}', MyClass);


//    print(myThing[0]);
//    print('---------------');







    width = MediaQuery.of(context).size.width;
    firstLineIcon = Icon(firstLineIconPram, color: Colors.white,);

    useData();
  }

  void useData(){
    if(data != null){
//      print(data);
//      print(data['icon'] == null);
      firstLineText = data['firstLineText'] != null ? data['firstLineText'] : '';
      midLineTextLeft = data['midLineTextLeft'] != null ? data['midLineTextLeft'] : '';
      midLineTextRight = data['midLineTextRight'] != null ? data['midLineTextRight'] : '';
      lastLineTextLeft = data['lastLineTextLeft'] != null ? data['lastLineTextLeft'] : '';
      lastLineTextRight = data['lastLineTextRight'] != null ? data['lastLineTextRight'] : '';
    }
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
//class MyClass{
//  String name;
//  String email;
//  MyClass(String data){
//    print(data);
////        Map<String, dynamic> user = jsonDecode('{"name": "John Smith", "email": "john@example.com"}');
////        Map<String, dynamic> user = jsonDecode(data);
//
////        print(user);
////    Map<String, dynamic> user = jsonDecode(data);
////    print(jsonDecode(data));
//  }
//
//}