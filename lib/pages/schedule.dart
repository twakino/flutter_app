import 'package:flutter/material.dart';
import 'package:flutter_app/models/schedule_model.dart';

class Schedule extends StatefulWidget {
  ScheduleModel schedule;

  Schedule(this.schedule);
  @override
  ScheduleState createState() {
    return new ScheduleState();
  }
}
class SelectAnswerModel {
  bool isSelected;
  final icon ;
  SelectAnswerModel(this.isSelected,this.icon);
}
class ScheduleState extends State<Schedule>  {
  List<SelectAnswerModel> selectAnserList = new List<SelectAnswerModel>();

  void initState() {
    // TODO: implement initState
    super.initState();
    selectAnserList.add(new SelectAnswerModel(false, new Icon(Icons.close)));
    selectAnserList.add(new SelectAnswerModel(false, new Icon(Icons.change_history)));
    selectAnserList.add(new SelectAnswerModel(false, new Icon(Icons.panorama_fish_eye)));
    // selectAnserList.add(new SelectAnswerModel(false, new Icon(Icons.radio_button_unchecked)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.schedule.faceName),
      ),
      body: new Column(children: <Widget>[
        //メンバーアイコンがうまく表示できない。。
        // new Row(children: widget.schedule.members.map((member) => new CircleAvatar(
        //           backgroundImage: new NetworkImage(member['profile_image']),
        //         )).toList()),

        // new Expanded(child:
        //   new ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: widget.schedule.members.length,
        //     itemBuilder: (context, i) => new CircleAvatar(
        //       backgroundImage: new NetworkImage(widget.schedule.members[i]['profile_image'])
        //     )
        //   )
        // ),

        new Expanded(child:
          new ListView.builder(
            itemCount: widget.schedule.candidateDays.length,
            itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 5.0,
                ),
                new ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        widget.schedule.candidateDays[i],
                        style: new TextStyle(color: Colors.black54, fontSize: 15.0),
                      ),
                      const Icon(Icons.panorama_fish_eye),
                      const Icon(Icons.change_history),
                      const Icon(Icons.close),
                    ],
                  ),
                )
              ],
            ),
          )
        )
      ])
    );
  }
}