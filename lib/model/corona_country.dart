// To parse this JSON data, do
//
//     final coronaAll = coronaAllFromJson(jsonString);

import 'dart:convert';


// To parse this JSON data, do
//
//     final coronaAll = coronaAllFromJson(jsonString);

List<CoronaAll> coronaAllFromJson(String str) => List<CoronaAll>.from(json.decode(str).map((x) => CoronaAll.fromJson(x)));

String coronaAllToJson(List<CoronaAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoronaAll {
  String country;
  CountryInfo countryInfo;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  static List<CoronaAll> parseProductList(map) {
    var list = map as List;
    return list.map((product) => CoronaAll.fromJson(product)).toList();
  }
  CoronaAll({
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
  });

  factory CoronaAll.fromJson(Map<String, dynamic> json) => CoronaAll(
    country: json["country"],
    countryInfo: CountryInfo.fromJson(json["countryInfo"]),
    cases: json["cases"],
    todayCases: json["todayCases"],
    deaths: json["deaths"],
    todayDeaths: json["todayDeaths"],
    recovered: json["recovered"],
    active: json["active"],
    critical: json["critical"],
    casesPerOneMillion: json["casesPerOneMillion"],
    deathsPerOneMillion: json["deathsPerOneMillion"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "countryInfo": countryInfo.toJson(),
    "cases": cases,
    "todayCases": todayCases,
    "deaths": deaths,
    "todayDeaths": todayDeaths,
    "recovered": recovered,
    "active": active,
    "critical": critical,
    "casesPerOneMillion": casesPerOneMillion,
    "deathsPerOneMillion": deathsPerOneMillion,
  };
}

class CountryInfo {
  String iso2;
  String iso3;
  dynamic id;
  double lat;
  double long;
  String flag;

  CountryInfo({
    this.iso2,
    this.iso3,
    this.id,
    this.lat,
    this.long,
    this.flag,
  });

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
    iso2: json["iso2"],
    iso3: json["iso3"],
    id: json["_id"],
    lat: json["lat"].toDouble(),
    long: json["long"].toDouble(),
    flag: json["flag"],
  );

  Map<String, dynamic> toJson() => {
    "iso2": iso2,
    "iso3": iso3,
    "_id": id,
    "lat": lat,
    "long": long,
    "flag": flag,
  };
}

enum IdEnum { NO_DATA }

final idEnumValues = EnumValues({
  "NO DATA": IdEnum.NO_DATA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

//List<CoronaAll> coronaAllFromJson(String str) => List<CoronaAll>.from(json.decode(str).map((x) => CoronaAll.fromJson(x)));
//
//String coronaAllToJson(List<CoronaAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
//class CoronaAll {
//  String country;
//  int cases;
//  int todayCases;
//  int deaths;
//  int todayDeaths;
//  int recovered;
//  int active;
//  int critical;
//  int casesPerOneMillion;
//
//  static List<CoronaAll> parseProductList(map) {
//    var list = map as List;
//    return list.map((product) => CoronaAll.fromJson(product)).toList();
//  }
//  CoronaAll({
//    this.country,
//    this.cases,
//    this.todayCases,
//    this.deaths,
//    this.todayDeaths,
//    this.recovered,
//    this.active,
//    this.critical,
//    this.casesPerOneMillion,
//  });
//
//  factory CoronaAll.fromJson(Map<String, dynamic> json) => CoronaAll(
//    country: json["country"],
//    cases: json["cases"],
//    todayCases: json["todayCases"],
//    deaths: json["deaths"],
//    todayDeaths: json["todayDeaths"],
//    recovered: json["recovered"],
//    active: json["active"],
//    critical: json["critical"],
//    casesPerOneMillion: json["casesPerOneMillion"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "country": country,
//    "cases": cases,
//    "todayCases": todayCases,
//    "deaths": deaths,
//    "todayDeaths": todayDeaths,
//    "recovered": recovered,
//    "active": active,
//    "critical": critical,
//    "casesPerOneMillion": casesPerOneMillion,
//  };
//}
