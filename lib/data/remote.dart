import 'package:dio/dio.dart';
import 'package:corona_app/model/export_model.dart';
class CoronaAPI {
  final String urlCoronaAll = "https://corona.lmao.ninja/countries";
  final String urlCoronaJ2 =
      "https://code.junookyo.xyz/api/ncov-moh/data.json?fbclid=IwAR2wVEu2v8UejEtqDZAqcF1Ji8DHtlxoY8PmeVK-BIMjS2j36HKtfcUgr8o";

  final Dio _dio = Dio();
  Future<CoronaAll> getCoronaAll() async {
    try{
      Response response = await _dio.get(urlCoronaAll);
      return CoronaAll.fromJson(response.data);
    }catch (error){
      print("ERROR IN CoronaAll: "+error);
    }
  }
  Future<CoronaJ2> getCoronaJ2() async {
    try{
      Response response = await _dio.get(urlCoronaJ2);
      return CoronaJ2.fromJson(response.data);
    }catch (error) {
      print("ERROR IN CoronaJ2: "+error);
    }
  }
}