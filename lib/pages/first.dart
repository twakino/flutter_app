import 'package:flutter/material.dart';
import 'package:flutter_app/pages/second.dart';
import 'package:flutter_app/pages/meeting_screen.dart';
import 'package:flutter_app/pages/call_screen.dart';
import 'package:flutter_app/pages/status_screen.dart';


class FirstRoute extends StatefulWidget {
  FirstRoute();

  @override
  _FirstRoute createState() => new _FirstRoute();
}


class _FirstRoute extends State<FirstRoute> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("KURASERU"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "日程調整"),
            new Tab(text: "友達"),
            new Tab(text: "QR"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new MeetingScreen(),
          Center(
            child: RaisedButton(
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ),
          new StatusScreen(),
        ],
      )
    );
  }
}
