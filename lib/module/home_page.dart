
import 'package:corona_app/module/bloc_home/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_home/bloc.dart';
import 'bloc_home/state.dart';
import 'package:corona_app/model/export_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetCoronoJ2Bloc _getCoronoJ2Bloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getCoronoJ2Bloc = GetCoronoJ2Bloc();
  }
  @override
  Widget build(BuildContext context) {
    _getCoronoJ2Bloc.add(GetCoronaEvetn());
    return BlocProvider(
      create: (context) => _getCoronoJ2Bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Corona With Friends"),
        ),
        body: BlocBuilder(
          bloc: _getCoronoJ2Bloc,
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
Widget successPage( CoronaJ2 coronaJ2){
  return Container(
    child: Text(coronaJ2.data.vietnam.cases.toString()),
  );
}