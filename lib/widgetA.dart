
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/inherited.dart';

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state = MyInheritedWidget.of(context);
    return new Container(
      child: new RaisedButton(
        child: new Text('WidgetA Add Item',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          state.addItem('new item');
        },
      ),
    );
  }
}