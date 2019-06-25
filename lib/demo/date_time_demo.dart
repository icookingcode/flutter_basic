import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  var now = DateTime.now();
  var nowTime = TimeOfDay.now();
  String currentDate;
  String currentTime;

  @override
  void initState() {
    super.initState();
    currentDate = _getDateStr(now);
//    print(now);//2019-06-25 13:47:57.631434
//    print(now.millisecondsSinceEpoch);//1561441677631
//    print(formatDate(now, [yyyy, '年', mm, '月', dd, '日']));
  }

  String _getDateStr(DateTime date) {
    return formatDate(date, [
      yyyy,
      '-',
      mm,
      '-',
      dd,
    ]);
  }

  _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: now,
            locale: Locale('zh'),
            firstDate: DateTime(1980),
            lastDate: DateTime(2100))
        .then((date) {
      if (date == null) return;
      setState(() {
        now = date;
        currentDate = _getDateStr(date);
      });
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: nowTime,
    );
    if (result != null) {
      setState(() {
        nowTime = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期和时间戳'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(currentDate),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(nowTime.format(context)),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showTimePicker,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
