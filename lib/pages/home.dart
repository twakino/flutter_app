import 'package:flutter/material.dart';
import 'package:flutter_app/pages/create_schedule.dart';
import 'package:flutter_app/pages/friends_screen.dart';
import 'package:flutter_app/pages/schedule_screen.dart';
import 'package:flutter_app/pages/qr_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeRoute extends StatefulWidget {
  HomeRoute();

  @override
  _HomeRoute createState() => new _HomeRoute();
}


class _HomeRoute extends State<HomeRoute> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;
  final Widget svgLogo = new SvgPicture.asset(
                          'images/logo_w.svg',
                          color: Colors.white,
                          semanticsLabel: 'Acme Logo');

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: new SizedBox(
            width: 120.0,
            height: 100.0,
            child: svgLogo
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: '設定',
            onPressed: () {
            },
          ),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new ScheduleScreen(),
          new FriendsScreen(),
          new QrScreen(),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _currentIndex == 0 ? new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.add,
          color: Colors.white,
        ),
        tooltip: '予定を作成',
        onPressed: () => 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleRoute()),
                ),
      ):null,
      bottomNavigationBar: BottomAppBar(
        child: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),text: "日程調整"),
            new Tab(icon: new Icon(Icons.group),text: "友達"),
            new Tab(icon: new Icon(Icons.person_add),text: "QR"),
          ],
        ),
        // notchedShape: CircularNotchedRectangle(),
        color: Theme.of(context).accentColor,
      ),
    );
  }
  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _currentIndex = _tabController.index;
      });
    }
  }
}

