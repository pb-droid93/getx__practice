import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count_controller.dart';

class GetXWidget extends StatelessWidget {
  const GetXWidget({super.key});

  //final controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GetX Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<CountController>(
                init: CountController(),
                builder: (controller) => Text(
                  "${controller.count}",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    var controller = Get.find<CountController>();
                    controller.increment();
                  },
                  child: const Text("Plus")),
              ElevatedButton(
                  onPressed: () {
                    var controller = Get.find<CountController>();
                    controller.decrement();
                  },
                  child: const Text("Minus"))
            ],
          ),
        ),
      ),
    );
  }
}
