import 'package:flutter/material.dart';
import 'package:flutter_app_demo/inherited.dart';
import 'package:flutter_app_demo/widgetA.dart';
import 'package:flutter_app_demo/widgetB.dart';
import 'package:flutter_app_demo/widgetC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text('I am Tree'),
        ),
        body: Column(
          children: <Widget>[
            WidgetA(),
            Padding(padding: EdgeInsets.all(15.0),),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  WidgetB(),
                  WidgetC(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

