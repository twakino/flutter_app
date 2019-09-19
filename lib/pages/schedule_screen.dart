import 'package:flutter/material.dart';
import '../models/schedule_model.dart';
import 'package:flutter_app/pages/schedule.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  ScheduleScreenState createState() {
    return new ScheduleScreenState();
  }
}

class ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: scheduleData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                onTap: () => 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Schedule(scheduleData[i])),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      scheduleData[i].faceName,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      scheduleData[i].createDatetime,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    "メンバー：" + scheduleData[i].members.length.toString() + "人",
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              )
            ],
          ),
    );
  }
}
