

import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
class SpecialButton extends StatelessWidget {
  IconData ?icon;
  VoidCallback ?function;
  SpecialButton({required this.icon,required this.function});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:function,
      child:
      Container(
        decoration: BoxDecoration(
          color: Appcolors.PrimaryColor,
          shape: BoxShape.circle,
        ),
          child: Icon(icon,size: 35,color: Appcolors.AccuentColor,),
        ),
    );
  }
}
