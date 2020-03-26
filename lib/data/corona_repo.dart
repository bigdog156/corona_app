import 'dart:async';
import 'package:dio/dio.dart';
import 'remote.dart';
import 'package:corona_app/model/export_model.dart';

class CoronaRepository {
  CoronaAPI _api = CoronaAPI();
  Future<List<Corona>> getCoronaRepositoryList() async {
    var c = Completer<List<Corona>>();
    try {
      var response = await _api.getCoronaAll();
      var productList =  Corona.parseProductList(response.data);
      print(productList);
      c.complete(productList);
    } on DioError {
      c.completeError('Không có dữ liệu');
    } catch (e) {
      c.completeError(e);
    }
    return c.future;
  }
}