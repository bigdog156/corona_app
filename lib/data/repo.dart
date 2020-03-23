import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'remote.dart';
import 'dart:convert';
import 'package:corona_app/model/export_model.dart';
class CoronaRepositoryAll {
  List<CoronaAll> listCoro;
  CoronaAPI _api = CoronaAPI();
  Future<List<CoronaAll>> getCoronaAll() async{
    var response = await _api.getCoronaAll();
    json.decode(response.data).forEach((json) {
      listCoro.add(CoronaAll.fromJson(json));
    });
    print(listCoro[0]);
    return listCoro;
  }
}
class CoronaRepo {
  CoronaAPI _api = CoronaAPI();
  Future<List<CoronaAll>> getProductList() async {
    var c = Completer<List<CoronaAll>>();
    try {
      var response = await _api.getCoronaAll();
      var productList =  CoronaAll.parseProductList(response.data);
      c.complete(productList);
    } on DioError {
      c.completeError('Không có dữ liệu');
    } catch (e) {
      c.completeError(e);
    }
    return c.future;
  }
}
class CoronaRepositoryJ2{
  CoronaAPI _api = CoronaAPI();
  Future<CoronaJ2> getCoronaJ2() async {
    return _api.getCoronaJ2();
  }
}