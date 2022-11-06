import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/myenumes.dart';
import 'package:get/get.dart';

class GenderController extends GetxController{
  Gender ?mygender=Gender.male;
  Gendermal(){
    mygender=Gender.male;
    update();
  }
  Genderfemal(){
    mygender=Gender.female;
    update();
  }
}