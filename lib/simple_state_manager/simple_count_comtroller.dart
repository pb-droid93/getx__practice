import 'package:get/get.dart';

class SimpleCountController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
