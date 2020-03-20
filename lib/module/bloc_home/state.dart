import 'package:corona_app/model/export_model.dart';
abstract class CoronaState{}

class GetCoronaJ2UnInitial extends CoronaState{}

class GetCoronaJ2Loading extends CoronaState{}

class GetCoronaJ2Success extends CoronaState{
  CoronaJ2 coronaJ2;
  GetCoronaJ2Success(this.coronaJ2): assert(coronaJ2 != null);
}

class GetCoronaJ2Error extends CoronaState{}
