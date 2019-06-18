import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageDemo'),
      ),
      body: Center(
        child: Container(
          child: Image.network(
            'http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4',
//            fit: BoxFit.scaleDown,
//            color: Colors.lightBlue,
//            colorBlendMode: BlendMode.softLight,
            repeat: ImageRepeat.repeatX,
          ),
          width: 300.0,
          height: 200.0,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
