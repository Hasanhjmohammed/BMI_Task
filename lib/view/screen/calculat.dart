
import 'package:flutter/material.dart';
import 'package:flutter_mytask/controller/gendercontroller.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/core/constant/approutes.dart';
import 'package:flutter_mytask/core/constant/myenumes.dart';
import 'package:flutter_mytask/core/constant/shard_prferencess.dart';
import 'package:flutter_mytask/main.dart';
import 'package:flutter_mytask/model/BMI.dart';
import 'package:flutter_mytask/view/widget/BMI.dart';
import 'package:flutter_mytask/view/widget/custombutton.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
import 'package:flutter_mytask/view/widget/specialcard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../controller/agecontroller.dart';
import '../../controller/heightcontroller.dart';
import '../../controller/weightcontroller.dart';
import '../../core/class/init_sql.dart';
import '../../core/constant/BMI_DETAILS.dart';
import '../../core/function/indexlistBMI.dart';
import '../../core/function/result_BMI.dart';
import '../../core/function/saveBMI.dart';
import '../widget/customslider.dart';
import '../widget/selectgender.dart';

class CalculatScreen extends StatelessWidget {
  final AgeController agecontroller =Get.put(AgeController());
  final WeightController weightcontroller =Get.put(WeightController());
  final HeightController Heightcontroller =Get.put(HeightController());
  final GenderController Gendertcontroller =Get.put(GenderController());
  MySql mydb = MySql();
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.PrimaryColor,
        title: CustomText(
            mytitle: "Welcome ${myShared.getString(KeySharedPreference.User_Name)}",
            myfontsize: 20,
            mycolor: Appcolors.AccuentColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         GetBuilder<GenderController>(
          // init: GenderController(),
           builder: (controllergender)=> Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             SelectGender(
               color: controllergender.mygender==Gender.male?Appcolors.AccuentColor:Colors.transparent,
               function: ()=>controllergender.Gendermal(),
               title: "male",
               icon: FontAwesomeIcons.mars,
             ),
             SelectGender(
               color: controllergender.mygender==Gender.female?Appcolors.AccuentColor:Colors.transparent,
               function:()=>controllergender.Genderfemal() ,
               title: "female",
               icon: FontAwesomeIcons.venus,
             )
           ],
         ),),
          CustomSlider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GetBuilder<AgeController>(
                init: AgeController(),
                  builder: ((controller) =>
                      SpecialCard(title: "Age (year)", body: "${controller.myage}",
                 functionadd:()=>controller.incrmentage(),
                          functionareduce:()=>controller.decrmentage()
                      )
                  ),
              ),
             GetBuilder<WeightController>(
                 init: WeightController(),
                 builder: ((controllerweight) =>
                 SpecialCard(title: "Weight (kg)", body: "${controllerweight.myweight} ",
                 functionadd: ()=>controllerweight.incrmentweight(),
                   functionareduce: ()=>controllerweight.decrmentweight(),
                 )))
            ],
          ),
          CustomButton(title: "Resault YOUR BMI", function: ()async{
            if(Heightcontroller.range==0||agecontroller.myage==0||weightcontroller.myweight==0)
              {Get.snackbar("Wrong value", "Pleas enter real value ",snackPosition:SnackPosition.BOTTOM);}
            else
          {  await saveBMI();
          Get.defaultDialog(
            title: "BMI",
            titleStyle: TextStyle(color: Appcolors.PrimaryColorText),
           // textCancel: "OK",
            cancel: CustomButton(title: "OK", function: ()=>Get.back()),

            content:  BMIWidget(body: "${resultBMI().toStringAsFixed(2)}",
              background: Color(mybmi[indexlistBMI(resultBMI())].color!),
                category:"${mybmi[indexlistBMI(resultBMI())].category}",


             ),


          );}
//
          }),
          CustomButton(title: "Move to record", function: (){
            Get.toNamed(AppRoute.record);
          }),
        ],
      ),
    );
  }




}
