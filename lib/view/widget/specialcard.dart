import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
import 'package:flutter_mytask/view/widget/specialbutton.dart';

import '../../core/constant/appcolors.dart';
class SpecialCard extends StatelessWidget {
  String ?title;
  String ?body;
 VoidCallback? functionadd;
  VoidCallback? functionareduce;
  SpecialCard({required this.title,required this.body,this.functionadd,this.functionareduce});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.35,
        height: Get.width*0.4,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          // color: Appcolors.AccuentColor,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Appcolors.AccuentColor),
        ),
        child:Column(
          children: [
            CustomText(mytitle: "$title",myfontsize: 20,mycolor: Appcolors.PrimaryColor,),
           CustomText(mytitle: "$body",myfontsize: 50,mycolor: Appcolors.PrimaryColorText,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SpecialButton(icon: Icons.add, function:functionadd),
              SpecialButton(icon: Icons.remove, function:functionareduce),
            ],)
          ],
        )
    );
  }
}
