import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UrlLaunchDemo extends StatelessWidget {
  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  _showToastBottom() {
    Fluttertoast.showToast(
        msg: "This is Bottom Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.grey.withOpacity(0.8),
        textColor: Colors.white,
        fontSize: 14.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("url_launcher 5.0.3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _launchURL,
              child: Text('Show Flutter homepage in Explore'),
            ),
            RaisedButton(
              onPressed: _showToast,
              child: Text('This is Center Short Toast'),
            ),
            RaisedButton(
              onPressed: _showToastBottom,
              child: Text('This is Bottom Short Toast'),
            ),
          ],
        ),
      ),
    );
  }
}
