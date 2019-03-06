import 'package:flutter/material.dart';
import 'package:infovizion/widgets/kpi/kpi.dart';
import 'dart:convert';


void main() {
  return runApp(MyApp());
//  runApp(MyApp()
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'infovizion',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'page 1'),
        '/two': (context) => MyHomePage(title: 'page 2'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

    dataList.forEach((e){
      kpiList.add( Kpi(context, data: e).get());
    });
//    print(dataList.length);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200,
          ),
          child: new GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/two');
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: kpiList,
            ),
          ),
        ),
      )
    );
  }
}