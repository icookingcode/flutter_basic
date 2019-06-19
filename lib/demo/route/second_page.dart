import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop("大长腿小姐姐：15251538462");
              },
              child: Text('大长腿小姐姐'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop("小蛮腰小姐姐：15251538999");
              },
              child: Text('小蛮腰小姐姐'),
            )
          ],
        ),
      ),
    );
  }
}