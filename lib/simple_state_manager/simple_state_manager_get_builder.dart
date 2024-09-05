import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_practice/simple_state_manager/simple_count_comtroller.dart';

class GetBuilderStateM extends StatelessWidget {
  const GetBuilderStateM({super.key});
  // we dont have to initialize controller here
  // we use get builder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Get Builder",
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
              GetBuilder<SimpleCountController>(
                  init: SimpleCountController(),
                  builder: (controller) => Text(
                        "${controller.count}",
                        style: const TextStyle(fontSize: 25),
                      )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    var controller = Get.find<SimpleCountController>();
                    controller.increment();
                  },
                  child: const Text("Plus")),
              ElevatedButton(
                  onPressed: () {
                    var controller = Get.find<SimpleCountController>();
                    controller.decrement();
                  },
                  child: const Text("Minus")),
            ],
          ),
        ),
      ),
    );
  }
}
