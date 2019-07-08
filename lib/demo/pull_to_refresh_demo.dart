import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'model/product.dart';

class PullToRefreshDemo extends StatefulWidget {
  @override
  _PullToRefreshDemoState createState() => _PullToRefreshDemoState();
}

class _PullToRefreshDemoState extends State<PullToRefreshDemo> {
  final List<Product> _list =
      List.generate(20, (index) => Product('商品$index', '这是第$index个商品的详情'));
  RefreshController _controller;

  @override
  void initState() {
    super.initState();
    _controller = RefreshController(
      initialRefresh: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onRefresh() {
    new Timer(
        Duration(
          seconds: 2,
        ), () {
      _controller.refreshCompleted();
    });
  }

  void _onLoading() {
    new Timer(
        Duration(
          seconds: 2,
        ), () {
      _controller.loadComplete();
      _controller.loadNoData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pull_to_refresh 1.4.8'),
      ),
      body: SmartRefresher(
        controller: _controller,
        enablePullDown: true,
        enablePullUp: true,
        header: ClassicHeader(
          refreshingText: '正在刷新，请稍后...',
          idleText: '下拉刷新',
          releaseText: '释放刷新',
          completeText: '已刷新',
          failedText: '刷新失败',
        ),
//        header: WaterDropMaterialHeader(),
        footer: ClassicFooter(
          loadingText: '加载中...',
          idleText: '加载更多',
          failedText: '加载失败，点击重试',
          noDataText: '已加载完',
        ),
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView.builder(
          itemBuilder: _buildItem,
          itemCount: _list.length,
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    return ListTile(
      title: Text(_list[index].title),
      onTap: () {},
    );
  }
}
