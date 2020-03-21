
import 'package:corona_app/module/bloc_home/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_home/bloc.dart';
import 'bloc_home/state.dart';
import 'package:corona_app/model/export_model.dart';
import 'package:corona_app/share/widget.dart';
import 'dart:core';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetCoronaJ2Bloc _getCoronaJ2Bloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getCoronaJ2Bloc = GetCoronaJ2Bloc();

  }
  @override
  Widget build(BuildContext context) {
    _getCoronaJ2Bloc.add(GetCoronaEvent());
    return BlocProvider(
      create: (context) => _getCoronaJ2Bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("COVID - 19", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              ListTile(
                title: Text("Trang cá nhân"),
                onTap: () {
                },
              )
            ],
          ),
        ),
        body: BlocBuilder(
          bloc: _getCoronaJ2Bloc,
          builder: (context, CoronaState state){
            if(state is GetCoronaJ2UnInitial){
              return Container(
                child: Text("Init"),
              );
            }else if (state is GetCoronaJ2Loading){
              return Center(child:CircularProgressIndicator());
            }else if (state is GetCoronaJ2Success){
              return successPage(state.coronaJ2);
            }
            return Container(
              child: Text("Error"),
            );
          },
        ),
      ),
    );
  }
}
Widget successPage(CoronaJ2 coronaJ2){
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      child: Column(
        children: <Widget>[
          ItemTotal( globalJ2: coronaJ2.data.global,),
        ],
      ),
    ),
  );
}