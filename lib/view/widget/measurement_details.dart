import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/view/widget/BMI.dart';
import 'package:flutter_mytask/view/widget/sub_details.dart';
import 'package:get/get.dart';

import '../../core/constant/myenumes.dart';
class MeasurementDetails extends StatelessWidget {
  String ?num_BMI;
  int ?color_BMI;
  String ?category_BMI;
  String ?name;
  String ?age;
  String ?date;
  String ?gender;
  MeasurementDetails({
    required this.name,
    required this.date,
   required  this.age,
    required this.gender,
    required this.num_BMI,
    required this.category_BMI,
    required this.color_BMI
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
    border: Border.all(color: Appcolors.AccuentColor),
      ),
      height: Get.width*0.4,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: BMIWidget(body: num_BMI,background: Color(color_BMI!),category: category_BMI,)),
              Expanded(
              flex: 2,
              child:Sub_Details(name: name,
                age: age,
                date: date,
                gender: "${gender}",)
          ),
        ],
      ),
    );
  }
}
