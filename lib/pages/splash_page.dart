import 'package:flutter/material.dart';
import 'package:flutter_basic/common/utils.dart';

import '../main.dart';
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animation = Tween(begin: 0,end: 1).animate(_controller);
    _animation.addStatusListener((status){
      if(AnimationStatus.completed == status){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){return MyHomePage();}), (route) => route==null);
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(opacity: _controller,child: Image.asset(Utils.getImgPath('splash_bg'),fit: BoxFit.cover,),),
    );
  }
}
