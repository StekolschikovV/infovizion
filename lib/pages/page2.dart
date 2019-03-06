import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import './test.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:infovizion/bar_chart/simple.dart';

class Page2 extends StatefulWidget {
  Page2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
//        body:  new SimpleBarChart.withRandomData(),
        body: Column(
          children: <Widget>[
          ],
        )
//        body: HorizontalPatternForwardHatchBarChart()
        );
  }
}

