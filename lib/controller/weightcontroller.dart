import 'package:get/get.dart';

class WeightController extends GetxController{
  var myweight=0;
  incrmentweight(){
    myweight++;
    update();
  }
  decrmentweight(){
    myweight--;
    update();
  }

}