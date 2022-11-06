import 'package:flutter/material.dart';
import 'package:flutter_mytask/controller/heightcontroller.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
import 'package:get/get.dart';
class CustomSlider extends StatelessWidget {
  final HeightController con=Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        // color: Appcolors.AccuentColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Appcolors.AccuentColor),
      ),
      child: GetBuilder<HeightController>(
        //init: HeightController(),
        builder: (con)=>Column(
          children: [
          CustomText(mytitle:"Height (cm)",myfontsize: 15,mycolor: Appcolors.PrimaryColor,),
            Slider(
              inactiveColor: Appcolors.PrimaryColor.withOpacity(0.3),
              activeColor: Appcolors.PrimaryColorText,
              max: 200,
              min: 0,
              value: con.range  ,
              divisions: 200,
              label: "${con.range}",
              onChanged: (val){
                con.setRange(val);
              },
            ),
            CustomText(mytitle: "${con.range}",myfontsize: 15,mycolor: Appcolors.PrimaryColor,),
          ],
        )
      ),
    );
  }
}
