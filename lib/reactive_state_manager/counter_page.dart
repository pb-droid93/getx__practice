import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx With Controller",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "${controller.count.value}",
                    style: const TextStyle(fontSize: 30),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Text("Plus")),
              ElevatedButton(
                  onPressed: () {
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
