import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  String ?mytitle;
  double ?myfontsize;
  Color ?mycolor;
  CustomText({
  required this.mytitle,
   this.myfontsize,
   this.mycolor});
  @override
  Widget build(BuildContext context) {
    return Text("$mytitle",
      style: TextStyle(
      fontSize: myfontsize
          ,color: mycolor
    ),
    );
  }
}
