import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerDemo'),
      ),
      body: Center(
        child: Container(
          width: 500.0,
          height: 400.0,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
//          color: Colors.lightBlue,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.lightBlue,Colors.green,Colors.purple
            ],),
            border: Border.all(width: 2,color: Colors.red),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'hello Guc',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
