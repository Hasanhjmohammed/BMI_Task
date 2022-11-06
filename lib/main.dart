import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mytask/routes.dart';
import 'package:flutter_mytask/view/screen/login.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences myShared;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  myShared=await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
     // routes: myroutes,
      getPages: myroutes,
    );
  }
}

