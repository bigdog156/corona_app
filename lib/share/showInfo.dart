import 'package:corona_app/share/export_share.dart';
import 'package:flutter/material.dart';
// F1 là nhiễm bệnh
// F2 là tử vong
// F3 là phục hồi
enum info {F1, F2, F3 }
String processInfo(info ex){
  if (ex == info.F1){
    return "Nhiễm bệnh";
  }else if( ex == info.F2){
    return "Tử vong";
  }
  return "Phục hồi";
}
Widget iconInfo(info ex){
  if (ex == info.F1){
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person),
        )
      ],
    );
  }else if (ex == info.F2){
    return Stack(
      children: <Widget>[
         CircleAvatar(
           backgroundColor: Colors.white,
           child: Icon(
               Icons.airline_seat_individual_suite,
             color: Colors.redAccent,
           ),
         )
      ],
    );
  }
  return Stack(
    children: <Widget>[
      CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.favorite,
          color: Colors.teal,
        ),
      )
    ],
  );
}
class ShowInfo extends StatelessWidget {
  int number;
  info ex;
  ShowInfo({ this.number, this.ex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width*0.5,
      decoration: BoxDecoration(
        color: Color(0xFFE5E7E9),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: iconInfo(ex),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(number.toString(), style: titleText(),),
                Text(processInfo(ex), style: normalText(),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
