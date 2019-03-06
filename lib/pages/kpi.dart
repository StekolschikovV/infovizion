import 'package:flutter/material.dart';
import 'package:infovizion/widgets/kpi/kpi.dart';
import 'dart:convert';
import 'package:infovizion/menu.dart';

class PageKpi extends StatefulWidget {
  PageKpi({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PageKpi createState() => _PageKpi();
}

class _PageKpi extends State<PageKpi> {
  int _counter = 0;
  String testData = '['
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."}, '
      '{ "background":"27,161,226,1","firstLineText": "Продажи", "midLineTextLeft":"", "midLineTextRight":"33.3 млн.руб","lastLineTextLeft":"105.3%","lastLineTextRight":"20.4 млн.руб"}, '
      '{ "rotateIcon":"90", "background":"204,102,119,1","firstLineText": "%Наценки", "midLineTextLeft":"", "midLineTextRight":"8.91 %","lastLineTextLeft":"89%","lastLineTextRight":"-1.8 млн.руб."} '
      ']';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> kpiList = [];
    List dataList = jsonDecode(testData);

    dataList.forEach((e) {
      kpiList.add(Kpi(context, data: e).get());
    });

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Menu(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
            ),
            child: new GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: kpiList,
              ),
            ),
          ),
        ));
  }
}
