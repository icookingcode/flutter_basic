import 'package:flutter/material.dart';
import 'demo/card_demo.dart';
import 'demo/column_demo.dart';
import 'demo/container_demo.dart';
import 'demo/form_demo.dart';
import 'demo/gridview_demo.dart';
import 'demo/image_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/radio_demo.dart';
import 'demo/route/first_page.dart';
import 'demo/route/product_list_page.dart';
import 'demo/row_demo.dart';
import 'demo/stack_demo.dart';
import 'demo/text_demo.dart';
import 'movies/movie_list.dart';
import 'novel/novel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final String title1 = 'Basic Widget';
  final String title2 = 'Dio';
  final String title3 = '我的小说';
  String title = 'Basic Widget';

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener((){
      _setTitle(_controller.index);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setTitle(int index) {
    setState(() {
      switch (index) {
        case 0:
          title = title1;
          break;
        case 1:
          title = title2;
          break;
        case 2:
          title = title3;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          WidgetPage(),
          MovieList(type: 'in_theaters',),
          NovelList(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 50,
        child: TabBar(
          controller: _controller,
          labelStyle: TextStyle(height: 0, fontSize: 10),
          tabs: <Widget>[
            Tab(
              text: 'Widgets',
              icon: Icon(Icons.widgets),
            ),
            Tab(
              text: 'Dio',
              icon: Icon(Icons.network_cell),
            ),
            Tab(
              text: 'Novel',
              icon: Icon(Icons.my_location),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: 'Text Widget', page: TextDemo()),
        ListItem(title: 'Container Widget', page: ContainerDemo()),
        ListItem(title: 'Image Widget', page: ImageDemo()),
        ListItem(title: 'ListView Widget', page: ListViewDemo()),
        ListItem(title: 'GridView Widget', page: GridViewDemo()),
        ListItem(title: 'Row Widget', page: RowDemo()),
        ListItem(title: 'Column Widget', page: ColumnDemo()),
        ListItem(title: 'Stack Widget', page: StackDemo()),
        ListItem(title: 'Card Widget', page: CardDemo()),
        ListItem(title: 'Route Demo', page: FirstPage()),
        ListItem(title: 'Route with Params', page: ProductsPage()),
        ListItem(title: 'From 表单', page: FormDemo()),
        ListItem(title: 'Radio、RadioListTile', page: RadioDemo()),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }
}
