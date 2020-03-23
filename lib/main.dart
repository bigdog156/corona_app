
import 'package:corona_app/module/main_page.dart';
import 'package:flutter/material.dart';
import 'share/material_color.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: PageMain(),
    );
  }
}

