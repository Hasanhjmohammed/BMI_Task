import 'package:flutter/material.dart';
import 'package:flutter_mytask/controller/gendercontroller.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SelectGender extends StatelessWidget {
  String ?title;
 IconData?icon;
 Color ?color;
 VoidCallback ?function;
  SelectGender({this.title,this.icon,this.color,this.function});
  @override
  final GenderController genderController =Get.find();
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Appcolors.AccuentColor),
        ),
        child: Column(
          children: [
            Icon(icon,
              size: Get.width*0.3,
            ),
            SizedBox(height: 10.0,),
            Text('$title',style: TextStyle(
                color: Appcolors.PrimaryColor)),
          ],
        ),
      ),
    );
  }
}
