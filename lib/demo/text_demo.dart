import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: Center(
        child: Text(
          'hello Mr. Gu ,这是测试flutter Text Widget的属性。textAlign:设置文字对齐方式；overflow:超出文本显样式',
          textAlign: TextAlign.left,
//            maxLines: 1,
//            overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.pink,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ),
    );
  }
}
