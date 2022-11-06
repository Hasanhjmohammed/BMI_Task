import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/core/constant/approutes.dart';
import 'package:flutter_mytask/core/constant/shard_prferencess.dart';
import 'package:flutter_mytask/main.dart';
import 'package:flutter_mytask/view/screen/calculat.dart';
import 'package:flutter_mytask/view/widget/custombutton.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
import 'package:flutter_mytask/view/widget/customtextfeild.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController ?name=TextEditingController();
  GlobalKey<FormState> _keyValue = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: Get.width*0.10,
            right: Get.width*0.10,
            bottom: Get.height*0.10,
            top: Get.height*0.20,
        ),
        child: Column(
          children: [
            CustomText(
              mytitle: "LOGIN",
              myfontsize: 30,
              mycolor: Appcolors.PrimaryColor,
            ),
            SizedBox(height: Get.height*0.1,),
            Form(
              key: _keyValue,
              child: Padding(
              padding: EdgeInsets.symmetric(
                //vertical: Get.width*0.05,
                  horizontal: Get.height*0.02),
              child: CustomTextFeild(value :name ,hintText: 'User name',),
            ),),
            Spacer(),
            CustomButton(title: "Login", function: (){
              if(_keyValue.currentState!.validate())
             {myShared.setString(KeySharedPreference.User_Name, name!.text);
               Get.toNamed(AppRoute.calculate);
             }
            }),
//              SizedBox(
//                height: Get.height*0.1,
//              ),
          ],
        )
      ),
    );
  }
}
