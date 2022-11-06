import 'package:get/get.dart';

class HeightController extends GetxController{
  double range=0.0;
  void setRange(double range) {
    this.range = range;
    update();
  }

}