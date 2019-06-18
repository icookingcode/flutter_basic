import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('返回上一页'),
        ),
      ),
    );
  }
}