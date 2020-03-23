import 'package:bloc/bloc.dart';
import 'package:corona_app/data/repo.dart';
import 'package:corona_app/module/bloc_world/event.dart';
import 'package:corona_app/module/bloc_world/state.dart';
import 'package:corona_app/model/export_model.dart';
class GetCoronaBloc extends Bloc<CoronaEventAll, CoronaStateAll>  {

  @override
  // TODO: implement initialState
  CoronaStateAll get initialState => GetCoronaUnInitial();

  @override
  Stream<CoronaStateAll> mapEventToState(CoronaEventAll event) async*{
    // TODO: implement mapEventToState
    yield GetCoronaLoading();
    if (event is GetCoronaEventAll) {
      List<CoronaAll> list = await CoronaRepo().getProductList();
      print(list);
      yield GetCoronaSuccess(list);
    }
    if(event is GetCoronaJ2Error){
      print("ERROR IN BLOC FILE ALL");
    }
  }
}