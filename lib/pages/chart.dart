import 'package:flutter/material.dart';
import 'package:infovizion/bar_chart/simple.dart';
import 'package:infovizion/bar_chart/stacked_horizontal.dart';
import 'package:infovizion/pie_chart/donut.dart';
import 'package:infovizion/menu.dart';

class ChartPage extends StatefulWidget {
  ChartPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChartPage createState() => _ChartPage();
}

class _ChartPage extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Menu(),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: 400.0,
                    width: width,
                    child: SimpleBarChart.withSampleData()),
                Container(
                  height: 400.0,
                  width: width,
                  child: StackedHorizontalBarChart.withSampleData(),
                ),
                Container(
                  height: 400.0,
                  width: width,
                  child: DonutPieChart.withRandomData(),
                ),
              ],
            ),
          ],
        ));
  }
}
