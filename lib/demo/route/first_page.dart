import 'package:flutter/material.dart';
import 'package:flutter_basic/demo/route/second_page.dart';

class FirstPage extends StatelessWidget {
  _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));
    debugPrint("_navigateToSecondPage$result");
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面导航演示"),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _navigateToSecondPage(context);
                },
                child: Text('去找小姐姐'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
