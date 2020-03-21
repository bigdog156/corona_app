// To parse this JSON data, do
//
//     final coronaJ2 = coronaJ2FromJson(jsonString);

import 'dart:convert';

CoronaJ2 coronaJ2FromJson(String str) => CoronaJ2.fromJson(json.decode(str));

String coronaJ2ToJson(CoronaJ2 data) => json.encode(data.toJson());

class CoronaJ2 {
  bool success;
  Data data;

  CoronaJ2({
    this.success,
    this.data,
  });

  factory CoronaJ2.fromJson(Map<String, dynamic> json) => CoronaJ2(
    success: json["success"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data.toJson(),
  };
}

class Data {
  Global global;
  Global vietnam;

  Data({
    this.global,
    this.vietnam,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    global: Global.fromJson(json["global"]),
    vietnam: Global.fromJson(json["vietnam"]),
  );

  Map<String, dynamic> toJson() => {
    "global": global.toJson(),
    "vietnam": vietnam.toJson(),
  };
}

class Global {
  String cases;
  String deaths;
  String recovered;

  Global({
    this.cases,
    this.deaths,
    this.recovered,
  });

  String get getCases => cases;
  String get getDeaths => deaths;
  String get getRecovered => recovered;

  factory Global.fromJson(Map<String, dynamic> json) => Global(
    cases: json["cases"],
    deaths: json["deaths"],
    recovered: json["recovered"],
  );

  Map<String, dynamic> toJson() => {
    "cases": cases,
    "deaths": deaths,
    "recovered": recovered,
  };
}
