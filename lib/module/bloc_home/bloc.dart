import 'package:bloc/bloc.dart';
import 'package:corona_app/data/repo.dart';
import 'package:corona_app/module/bloc_home/event.dart';
import 'package:corona_app/module/bloc_home/state.dart';
import 'package:corona_app/model/export_model.dart';
import 'package:async/async.dart';
class GetCoronoJ2Bloc extends Bloc<CoronaEvent, CoronaState>  {

  @override
  // TODO: implement initialState
  CoronaState get initialState => GetCoronaJ2UnInitial();

  @override
  Stream<CoronaState> mapEventToState(CoronaEvent event) async*{
    // TODO: implement mapEventToState
    yield GetCoronaJ2Loading();
    if (event is GetCoronaEvetn) {
      CoronaJ2 coronaJ2 = await CoronaRepositoryJ2().getCoronaJ2();
      yield GetCoronaJ2Success(coronaJ2);
    }
    if(event is GetCoronaJ2Error){
      print("ERROR IN BLOC FILE");
    }
  }
}