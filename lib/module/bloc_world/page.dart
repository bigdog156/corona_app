
import 'package:corona_app/module/bloc_world/bloc.dart';
import 'package:corona_app/module/bloc_world/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:corona_app/model/export_model.dart';
import 'dart:core';
import 'state.dart';
import 'package:corona_app/share/export_share.dart';
class CoronaAllPage extends StatefulWidget {
  @override
  _CoronaAllState createState() => _CoronaAllState();
}

class _CoronaAllState extends State<CoronaAllPage> {
  GetCoronaBloc _coronaBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _coronaBloc = GetCoronaBloc();

  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _coronaBloc,
      child: Container(
        child: BlocBuilder(
          bloc: _coronaBloc,
          builder: (context, CoronaStateAll state) {
            if (state is GetCoronaUnInitial){
              _coronaBloc.add(GetCoronaEventAll());
              return Container(
                child: Text("Init data"),
              );
            }else if(state is GetCoronaLoading){
              return Container (
                child:
                  Text("Loading ... ")
              );
            }else if (state is GetCoronaSuccess){
              return coronaPageView(state.list);
            }
            return Container(
              child: Text("ERROR IN ALL"),
            );
          },
        ),
      ),
    );
  }
}
Widget coronaPageView(List<CoronaAll> list){
  return Container(
    child: Column(
      children: <Widget>[
        CoronaMap(listCorona: list),
      ],
    ),
  );
}