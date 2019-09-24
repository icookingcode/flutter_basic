import 'package:flutter/material.dart';
import 'package:flutter_basic/widget/PieChartWidget.dart';

class CustomView extends StatelessWidget {
  ///比例集合
  final List<double> angles = List()
    ..add(0.12)
    ..add(0.35)
    ..add(0.37)
    ..add(0.1)
    ..add(0.06);

  ///文案集合
  final List<String> contents = List()
    ..add("梁朝伟")
    ..add('刘德华')
    ..add('郭富城')
    ..add('周星驰')
    ..add('张学友');

  ///颜色集合
  final List<Color> colors = List()
    ..add(Colors.redAccent)
    ..add(Colors.blueAccent)
    ..add(Colors.black45)
    ..add(Colors.yellowAccent)
    ..add(Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义View"),
      ),
      body: Center(
        child: PieChartWidget(
          angles,
          colors,
          startTurns: 0,
          radius: 130,
          contents: contents,
        ),
      ),
    );
  }
}
