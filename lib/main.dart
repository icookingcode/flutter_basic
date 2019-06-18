import 'package:flutter/material.dart';

import 'demo/container_demo.dart';
import 'demo/gridview_demo.dart';
import 'demo/image_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/row_demo.dart';
import 'demo/text_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Widget'),
        ),
        body: ListView(
          children: <Widget>[
            ListItem(title: 'Text Widget', page: TextDemo()),
            ListItem(title: 'Container Widget', page: ContainerDemo()),
            ListItem(title: 'Image Widget', page: ImageDemo()),
            ListItem(title: 'ListView Widget', page: ListViewDemo()),
            ListItem(title: 'GridView Widget', page: GridViewDemo()),
            ListItem(title: 'Row Widget', page: RowDemo()),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
