import 'package:flutter/material.dart';

class WidgetC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Text(
      'Widget C',
      textAlign: TextAlign.right,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
//          fontWeight: FontWeight.bold,
        color: Colors.green[200],
      ),
    );
  }
}