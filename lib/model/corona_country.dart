// To parse this JSON data, do
//
//     final coronaAll = coronaAllFromJson(jsonString);

import 'dart:convert';

List<CoronaAll> coronaAllFromJson(String str) => List<CoronaAll>.from(json.decode(str).map((x) => CoronaAll.fromJson(x)));

String coronaAllToJson(List<CoronaAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoronaAll {
  String country;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int casesPerOneMillion;

  static List<CoronaAll> parseProductList(map) {
    var list = map as List;
    return list.map((product) => CoronaAll.fromJson(product)).toList();
  }
  CoronaAll({
    this.country,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
  });

  factory CoronaAll.fromJson(Map<String, dynamic> json) => CoronaAll(
    country: json["country"],
    cases: json["cases"],
    todayCases: json["todayCases"],
    deaths: json["deaths"],
    todayDeaths: json["todayDeaths"],
    recovered: json["recovered"],
    active: json["active"],
    critical: json["critical"],
    casesPerOneMillion: json["casesPerOneMillion"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "cases": cases,
    "todayCases": todayCases,
    "deaths": deaths,
    "todayDeaths": todayDeaths,
    "recovered": recovered,
    "active": active,
    "critical": critical,
    "casesPerOneMillion": casesPerOneMillion,
  };
}
