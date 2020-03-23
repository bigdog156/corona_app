import 'package:corona_app/module/home_page.dart';
import 'package:flutter/material.dart';
import 'package:corona_app/module/bloc_world/page.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: ListView(
        children: <Widget>[

          CoronaAllPage(),
//          HomePage(),
        ],
      ),
    );
  }
}
