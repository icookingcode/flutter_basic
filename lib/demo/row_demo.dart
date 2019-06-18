import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              child: Text('按钮1'),
            ),
          ),
          Expanded(
            child: RaisedButton(
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
