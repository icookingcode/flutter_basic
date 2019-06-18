import 'package:flutter/material.dart';
import 'package:flutter_basic/demo/route/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面导航演示"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
          },
          child: Text('查看商品详情页'),
        ),
      ),
    );
  }
}
