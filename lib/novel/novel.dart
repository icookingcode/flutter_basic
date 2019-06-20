import 'package:meta/meta.dart';

class Novel{
  final String title;
  final String key;
  String url;
  final String coverUrl;
  Novel({@required this.title,@required this.url,@required this.key ,this.coverUrl});
}