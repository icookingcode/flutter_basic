import 'package:flutter/material.dart';
class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Widget'),),
      body:Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_box,color: Colors.lightBlue,),
              title: Text('河南省郑州市金水区',style: Theme.of(context).textTheme.title,),
              subtitle: Text('Guchao:110',style: Theme.of(context).textTheme.subtitle,),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box,color: Colors.lightBlue,),
              title: Text('河南省郑州市郑东新区',style: Theme.of(context).textTheme.title,),
              subtitle: Text('Guchao:110',style: Theme.of(context).textTheme.subtitle,),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box,color: Colors.lightBlue,),
              title: Text('河南省郑州市高新区',style: Theme.of(context).textTheme.title,),
              subtitle: Text('Guchao:110',style: Theme.of(context).textTheme.subtitle,),
            ),
          ],
        ),
      ),
    );
  }
}
