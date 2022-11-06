import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  TextEditingController ?value=TextEditingController();
  String ?hintText;
  String ?InitialTitle;
  CustomTextFeild({required this.hintText,
    required this.value,
    this.InitialTitle
  });
  @override
  Widget build(BuildContext context) {
// if(InitialTitle!=null)
//   value!.text=InitialTitle!;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        validator:  (value){
          if(value!.isEmpty)
          {return "please Input uesed value";}},
        controller: value,
        style: TextStyle(
            color: Colors.yellow
        ),
        cursorColor: Colors.grey,
        decoration: InputDecoration(

          hintText: hintText,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3,
            ),
            // borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder:UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 0.5,

            ),
            //  borderRadius: BorderRadius.circular(25),
          ),

        ),
      ),
    );
  }
}