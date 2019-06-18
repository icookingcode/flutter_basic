import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewDemo'),
      ),
      body: Body3(),
    );
  }
}

class Body3 extends StatelessWidget {
  final List<String> _list = List()
    ..add(
        "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1638079650,2146947483&fm=27&gp=0.jpg")
    ..add(
        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4005673712,1755636340&fm=26&gp=0.jpg")
    ..add(
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=867419766,1699781503&fm=26&gp=0.jpg")
    ..add(
        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1297505592,1789076279&fm=27&gp=0.jpg');
  Widget _buildItem(BuildContext context,int index){
    return Container(
      height: 280,
      color: Colors.lightBlue,
      child: Image.network(
        _list[index%_list.length],
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: _list.length*10,
    );
  }
}

class Body2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200.0,
        child: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180,
          color: Colors.lightBlue,
          child: Image.network(
            'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1638079650,2146947483&fm=27&gp=0.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 180,
          color: Colors.red,
          child: Image.network(
            'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1297505592,1789076279&fm=27&gp=0.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 180,
          color: Colors.deepOrange,
          child: Image.network(
            'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=867419766,1699781503&fm=26&gp=0.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 180,
          color: Colors.deepPurpleAccent,
          child: Image.network(
            'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4005673712,1755636340&fm=26&gp=0.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.network(
            'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=891209561,3636218284&fm=27&gp=0.jpg'),
        ListTile(
          leading: Icon(Icons.pages),
          title: Text('标题1'),
        ),
        ListTile(
          leading: Icon(Icons.directions_bike),
          title: Text('标题2'),
        ),
        ListTile(
          leading: Icon(Icons.traffic),
          title: Text('标题3'),
        ),
        ListTile(
          leading: Icon(Icons.train),
          title: Text('标题4'),
        ),
        ListTile(
          leading: Icon(Icons.lightbulb_outline),
          title: Text('标题5'),
        ),
        ListTile(
          leading: Icon(Icons.star_half),
          title: Text('标题6'),
        ),
      ],
    );
  }
}
