import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mytask/controller/heightcontroller.dart';
import 'package:flutter_mytask/controller/weightcontroller.dart';
import 'package:get/get.dart';

import 'convert_cm_m.dart';
double resultBMI(){
  final WeightController weightcontroller=Get.find();
  final HeightController Heightcontroller=Get.find();
  double BMI=weightcontroller.myweight/
      pow(cm_m(Heightcontroller.range), 2)

  ;
  print(BMI);
  return BMI;
}