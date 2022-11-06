import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
import 'package:get/get.dart';
class BMIWidget extends StatelessWidget {
  String ?body;
  Color ?background;
  String ?category;
  BMIWidget({
    required this.body,
    required this.background,
  required this.category
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        color: background
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          CustomText(mytitle: body,myfontsize: 30,mycolor: Appcolors.AccuentColor,),
          CustomText(mytitle:category,myfontsize:20 ,mycolor: Appcolors.PrimaryColorText, )
        ]
      )
    );
  }
}
