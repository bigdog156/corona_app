import 'package:corona_app/model/export_model.dart';
abstract class CoronaStateAll{}

class GetCoronaUnInitial extends CoronaStateAll{
}

class GetCoronaLoading extends CoronaStateAll{}

class GetCoronaSuccess extends CoronaStateAll{
  List<CoronaAll> list;
  GetCoronaSuccess(this.list): assert(list != null);
}

class GetCoronaJ2Error extends CoronaStateAll{}