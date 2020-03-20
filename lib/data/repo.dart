import 'remote.dart';
import 'package:corona_app/model/export_model.dart';
class CoronaRepositoryAll {
  CoronaAPI _api = CoronaAPI();
  Future<CoronaAll> getCoronaAll() async{
    return _api.getCoronaAll();
  }
}

class CoronaRepositoryJ2{
  CoronaAPI _api = CoronaAPI();
  Future<CoronaJ2> getCoronaJ2() async {
    return _api.getCoronaJ2();
  }
}