import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class UrlLaunchDemo extends StatelessWidget {
  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("url_launcher 5.0.3"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Show Flutter homepage in Explore'),
        ),
      ),
    );
  }
}
