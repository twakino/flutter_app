import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login.dart';

Future<Null> main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "KURASERU",
      theme: new ThemeData(
        primaryColor: new Color(0xff1268ac),
        accentColor: new Color(0xff1268ac),
      ),
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
    );
  }
}

