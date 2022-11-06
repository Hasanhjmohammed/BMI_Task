import 'package:date_format/date_format.dart';
import 'package:flutter_mytask/controller/agecontroller.dart';
import 'package:flutter_mytask/controller/gendercontroller.dart';
import 'package:flutter_mytask/core/constant/shard_prferencess.dart';
import 'package:flutter_mytask/core/function/indexlistBMI.dart';
import 'package:flutter_mytask/core/function/result_BMI.dart';
import 'package:flutter_mytask/main.dart';

import '../class/init_sql.dart';
import '../constant/BMI_DETAILS.dart';
import '../constant/myenumes.dart';
import 'package:get/get.dart';
saveBMI()async{
  final AgeController agecontroller=Get.find();
  final GenderController Gendertcontroller=Get.find();
  MySql mydb = MySql();
  int r = await mydb.adddatabase('''
           INSERT INTO BMI(name, date,age,gender,mbi,mbi_cat,mbi_color )
           VALUES("${myShared.getString(KeySharedPreference.User_Name)}", "${formatDate(DateTime.now(),
      [yyyy, "-", mm, "-", dd,"  ",hh,":",nn])}",
                    "${agecontroller.myage.toString()}",
                    "${Gendertcontroller.mygender==Gender.male?"male":"female"}",
                    "${resultBMI().toStringAsFixed(2)}",
                    "${mybmi[indexlistBMI(resultBMI())].category.toString()}",
                    "${mybmi[indexlistBMI(resultBMI())].color!}"
                    )
           ''');
  print("---------------------date");
  //  print();
}