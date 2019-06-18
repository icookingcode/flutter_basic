import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Center(
        child: Stack(
//          alignment: FractionalOffset(0.5, 0.9),
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  'http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4'),
            ),
            Positioned(
              top: 10.0,
              left: 75.0,
              child: Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                child: Text('Mr. Gu'),
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 75.0,
              child: Text('Mr. Gu',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
