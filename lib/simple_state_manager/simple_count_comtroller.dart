import 'package:get/get.dart';

class SimpleCountController extends GetxController {
  var count = 0;

  void increment() {
    count++;

    update(['001']); //need to pass unique id in update function
  }

  void decrement() {
    count--;
    update(['001']);
  }

  //this method called on initialization
  @override
  void onInit() {
    // TODO: implement onInit
    print("on init called");
    super.onInit();
  }

  //called on controller destroyed
  @override
  void onClose() {
    // TODO: implement onClose
    print("on closed called");
    super.onClose();
  }
}
