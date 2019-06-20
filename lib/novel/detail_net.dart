import 'package:flutter/material.dart';
import 'package:flutter_basic/data_store/shared_prefences.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'novel.dart';


class NovelDetail extends StatefulWidget {
  final Novel novel;
  final String title;
  ///WebView加载网页
  NovelDetail({Key key, @required this.novel, @required this.title})
      : super(key: key);

  @override
  _NovelDetailState createState() => _NovelDetailState();
}

class _NovelDetailState extends State<NovelDetail> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();
  String _normalUrl;

  @override
  void initState() {
    super.initState();
    _normalUrl =  widget.novel.url.substring(0,widget.novel.url.lastIndexOf('/'));
    flutterWebviewPlugin.launch(widget.novel.url);
    flutterWebviewPlugin.onUrlChanged.listen(_onUrlChanged);
  }

  _onUrlChanged(String url){
    if(url.startsWith(_normalUrl)){
      SharedPreferencesUtil.saveNovelUrl(widget.novel.key,url);
    }else{
//      debugPrint('url:$url');
      flutterWebviewPlugin.goBack();
    }
  }

  @override
  void dispose() {
    flutterWebviewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.novel.url,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      initialChild: Container(
        child: Center(
          child: Text(
            'Waiting...',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
