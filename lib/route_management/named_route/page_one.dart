import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_practice/obx_example/obx_example.dart';

import '../../reactive_state_manager/counter_page.dart';
import '../../reactive_state_manager/using_getx_widget.dart';
import '../../simple_state_manager/simple_state_manager_get_builder.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page One",
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
            ElevatedButton(
                onPressed: () {
                  //name routing
                  Get.toNamed("page2?a=2&b=5", preventDuplicates: true);
                },
                child: const Text("Next page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => ObxExample());
                },
                child: const Text("ObxExample")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => CounterPage());
                },
                child: const Text("GetX Controller")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const GetXWidget());
                },
                child: const Text("GetX Widget")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const GetBuilderStateM());
                },
                child: const Text("Simple State Manager")),
          ],
        )),
      ),
    );
  }
}
