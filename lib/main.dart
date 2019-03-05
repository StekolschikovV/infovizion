import 'package:flutter/material.dart';
import 'package:infovizion/widgets/kpi.dart';

void main() => runApp(MyApp());

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
//            Kpi().build(context)
          Kpi(context).get()
//            Container(
//              margin: const EdgeInsets.all(10.0),
//              color: const Color(0xFF00FF00),
//              width: MediaQuery.of(context).size.width,
//              height: 48.0,
//            ),

//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
