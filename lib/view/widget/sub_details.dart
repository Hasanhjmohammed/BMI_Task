import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/view/widget/customrow.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
class Sub_Details extends StatelessWidget {
  String ?name;
  String ?age;
  String ?date;
  String ?gender;
  Sub_Details({this.name,this.age,this.date,this.gender});
  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: color,



      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomRow(title: "name", details: name),
          CustomRow(title: "age", details: age),
          CustomRow(title: "date", details: date),
          CustomRow(title: "gender", details: gender)


        ],
      ),
    );
  }
}
