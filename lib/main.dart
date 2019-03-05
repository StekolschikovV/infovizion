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
      home: MyHomePage(title: 'infovizion Demo Home Page3'),
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: kpiList,
//            children: <Widget>[
////              Kpi(context, colorBlue: 0).get(),
//              Kpi(context, colorRed: 500, data: dataList[0]).get(),
//              Kpi(context, colorRed: 500, data: dataList[1]).get(),
//              Kpi(context, colorRed: 500, data: dataList[2]).get(),
//              Kpi(context, colorRed: 500, data: dataList[3]).get(),
////              Kpi(context, colorGreen: 500).get(),
////              Kpi(context, colorBlue: 1500).get(),
////              Kpi(context, colorBlue: 500).get(),
//            ],
          ),
        ),
      )
//      body: Center(
//
//        child: Column(
//
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[
////            Kpi().build(context)
//          Kpi(context).get(),
//          Kpi(context, colorBlue: 500).get(),
////            Container(
////              margin: const EdgeInsets.all(10.0),
////              color: const Color(0xFF00FF00),
////              width: MediaQuery.of(context).size.width,
////              height: 48.0,
////            ),
//
////            Text(
////              '$_counter',
////              style: Theme.of(context).textTheme.display1,
////            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


//String testData = '['
//    '{ "firstLineText": "john@example.com1"}, '
//    '{ "firstLineText": "john@example.com1"}, '
//    '{ "firstLineText": "john@example.com1"}, '
//    '{"icon": "33", "firstLineText": "john@example.com2"},'
//    '{"icon": "33", "midLineTextLeft": "midLineTextLeft3"}'
//
//    ']';
