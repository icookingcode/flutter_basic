import 'package:flutter/material.dart';
import 'package:flutter_basic/common/utils.dart';
import 'package:flutter_basic/data_store/shared_prefences.dart';

import 'detail_net.dart';
import 'novel.dart';

class NovelList extends StatefulWidget {
  @override
  _NovelListState createState() => _NovelListState();
}

class _NovelListState extends State<NovelList>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    debugPrint(Utils.getPinyin("蛇妻美人"));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NovelItem(
          novel: Novel(
              title: '蛇妻美人',
              url: 'https://m.xiuxs.org/sheqimeiren/4444980.html',
              key: 'sqmr',
              coverUrl:
                  'https://www.bqg8.cc/files/article/image/35/35479/35479s.jpg'),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class NovelItem extends StatelessWidget {
  final Novel novel;

  NovelItem({
    @required this.novel,
  });

  _fixUrl() async {
    String url = await SharedPreferencesUtil.getNovelUrl(novel.key);
    if (url.isNotEmpty) {
      novel.url = url;
    }
  }

  @override
  Widget build(BuildContext context) {
    _fixUrl();
    return Card(
      child: ListTile(
        title: Text(novel.title),
        leading: Container(
          width: 30,
          height: 50,
          child: Image.network(novel.coverUrl),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return NovelDetail(
                title: novel.title,
                novel: novel,
              );
            },
          ));
        },
      ),
    );
  }
}
