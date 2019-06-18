import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue,
            child: Text('按钮1'),
          ),
          Expanded(
            child:  RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('按钮2'),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.pinkAccent,
            child: Text('按钮3'),
          ),
        ],
      ),
    );
  }
}
