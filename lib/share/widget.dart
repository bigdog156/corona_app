import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:corona_app/model/export_model.dart';
import 'dart:core';

class ItemTotal extends StatelessWidget {
  final Global globalJ2;
  final DateTime dateTime = new DateTime.now();

  ItemTotal({this.globalJ2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width*0.7,
                top: 5,
                bottom: 5
            ),
            alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            height: 20,
            child: Text(
                dateTime.hour.toString() +
                "h ngày " +
                dateTime.day.toString() +
                "-" +
                dateTime.month.toString()),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    "assets/world.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
              )),
          Text(
            "Tổng số ca nhiễm Covid-19 trên thế giới",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            globalJ2.cases,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class CoronaMap extends StatelessWidget {

  final List<CoronaAll> listCorona;
  final DateTime dateTime = new DateTime.now();
  CoronaMap({this.listCorona});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width*0.7,
                top: 5,
                bottom: 5
            ),
            alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            height: 20,
            child: Text(
                dateTime.hour.toString() +
                    "h ngày " +
                    dateTime.day.toString() +
                    "-" +
                    dateTime.month.toString()),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    "assets/world.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
              )),
          Text(
            "Số nước trên Thế giới:",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            listCorona.length.toString(),
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}