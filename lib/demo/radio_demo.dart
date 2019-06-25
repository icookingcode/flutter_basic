import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int sex = 1;//1:男 2：女
  int level =1;//1:2:3

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("单选"),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Radio(
                value: 1,
                onChanged: (v){
                  setState(() {
                    this.sex=v;
                  });
                },
                groupValue: this.sex,
              ),
              Text('男'),
              SizedBox(width: 20.0,),
              Radio(
                value: 2,
                onChanged: (v){
                  setState(() {
                    this.sex=v;
                  });
                },
                groupValue: this.sex,
              ),
              Text('女'),
            ],),
            Column(
              children: <Widget>[
                RadioListTile(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      this.level = v;
                    });
                  },
                  groupValue: this.level,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Image.network('http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4'),
                  selected: this.level ==1,
                ),
                RadioListTile(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      this.level = v;
                    });
                  },
                  groupValue: this.level,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Image.network('http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4'),
                  selected: this.level ==2,
                ),
                RadioListTile(
                  value: 3,
                  onChanged: (v){
                    setState(() {
                      this.level = v;
                    });
                  },
                  groupValue: this.level,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Image.network('http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4'),
                  selected: this.level ==3 ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

