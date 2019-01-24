import 'package:flutter/material.dart';
import 'package:flutter_app_demo/inherited.dart';

class WidgetB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state = MyInheritedWidget.of(context);
    return new Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.shopping_cart),
          Text('${state.itemsCount}',
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}