import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
class CustomRow extends StatelessWidget {
  String ?title;
  String ?details;
  CustomRow({required this.title,required this.details});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(mytitle: "$title  :",myfontsize: 15,mycolor: Appcolors.PrimaryColorText,),
          CustomText(mytitle: "$details  ",myfontsize: 15,mycolor: Appcolors.PrimaryColorText,),



        ],
      ),
    );
  }
}
