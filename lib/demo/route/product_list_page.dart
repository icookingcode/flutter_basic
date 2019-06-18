import 'package:flutter/material.dart';
import 'package:flutter_basic/demo/model/product.dart';
import 'package:flutter_basic/demo/route/product_detail.dart';
import 'package:flutter_basic/demo/route/second_page.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> _list = List.generate(20, (index)=>Product('商品$index', '这是第$index个商品的详情'));

  Widget _buildItem(BuildContext context,int index){

    return ListTile(
      title: Text(_list[index].title),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetail(product:_list[index])));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(itemBuilder: _buildItem,itemCount: _list.length,),
    );
  }
}
