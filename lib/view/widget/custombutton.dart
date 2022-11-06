import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
class CustomButton extends StatelessWidget {
  String ?title;
  VoidCallback ?function;
  CustomButton({required this.title,required this.function});
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(200, 40),
            primary: Appcolors.PrimaryColor
        ),
        onPressed: function, child: Text(title!,
      style: TextStyle(color: Appcolors.AccuentColor),));
  }
}
