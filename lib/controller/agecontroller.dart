import 'package:get/get.dart';

class AgeController extends GetxController{
  var myage=0;
  incrmentage(){
    myage++;
    update();
    print("$myage");

  }
  decrmentage(){
    myage--;
    update();

  }

}