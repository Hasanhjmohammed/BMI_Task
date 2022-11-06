import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/approutes.dart';
import 'package:flutter_mytask/view/screen/calculat.dart';
import 'package:flutter_mytask/view/screen/login.dart';
import 'package:flutter_mytask/view/screen/record.dart';
import 'package:get/get.dart';
List<GetPage<dynamic>>?myroutes=[
  GetPage(name: AppRoute.Login, page: ()=> LoginScreen(),),
    GetPage(name: AppRoute.calculate, page: ()=> CalculatScreen()),
   GetPage(name: AppRoute.record, page: ()=>  RecordScreen() ),

];