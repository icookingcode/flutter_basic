import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Widget'),
      ),
      body: Body1() ,
    );
  }
}

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //固定数量的GridView
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      childAspectRatio: 0.7,
      padding: EdgeInsets.all(8),
      children: <Widget>[
        Image.network(
          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1638079650,2146947483&fm=27&gp=0.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1297505592,1789076279&fm=27&gp=0.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=867419766,1699781503&fm=26&gp=0.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4005673712,1755636340&fm=26&gp=0.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

